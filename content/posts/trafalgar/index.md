+++
date = '2020-04-03'
draft = false
title = 'Mathematically Modeling the Battle of Trafalgar'
+++

{{< katex >}}

_The following blog post was originally written in collaboration with Heath Myers in my high school Precalculus course, for a unit on mathematical modeling._
_It was primarily based on a Finnish war games paper._
_Although a very simple model, I still think it's an interesting mix of historical research and educated guesswork._

## Abstract

We develop a general model, using a dynamical system, for simulating military battles. We then apply it to the Battle of Trafalgar.

## Introduction

Napoleon Bonaparte (15 August 1769 – 5 May 1821) is widely considered to be one of the greatest generals in military history. In his two decade career, he fought 60 battles and lost only seven. He made many advancements to modern warfare, including integrating artillery with infantry and cavalry units. Napoleon's tactics and reforms were so influential that they have been dubbed Napoleonic warfare, which continued to form the basis for Western warfare for decades after his death.

However, one major reason for his ultimate downfall was his failure to defeat the British. The British, who were very wealthy due to their massive colonial empire and trading prowess, took every opportunity to halt Napoleon's progress by funding his rivals on continental Europe. The only thing preventing Napoleon from staging a land invasion and defeating the British with his numerically superior army was the English Channel. If Napoleon could only gain a naval advantage, he would be able to conquer Britain. Thus, a combined French and Spanish fleet of 33 ship of the lines was sent to challenge British sea power. However, much to the dismay of Napoleon, the British prevailed at the Battle of Trafalgar, which would prove instrumental in Napoleon's ultimate defeat.

In this paper, we numerically simulate the famous Battle of Trafalgar by making rough approximations given available historical data. Note that since there are so many factors at play in a real battle, our simulations are inaccurate and mostly useful only for discovering general truths.

## Model

We begin with a general framework for warfare fought between a Red army and a Blue army (or a Red navy and a Blue navy). The two sides have strengths \\(R_t\\) and \\(B_t\\) at time \\(t \in \\{1, 2,\dots, T\\}\\), where \\(T \in \mathbb{N}\\) is the total number of times steps. It is assumed that one army's losses are proportional to the strength of the opposing army each time step. That proportion is defined by effectiveness \\(e \in [0, 1]\\) for each army. Also, armies undergo gradual attrition due to starvation, disease, etc., which is measured in the attrition variable \\(a \in [0, 1]\\) for each army each time step. Then, the matrix equation for the simulation becomes:

$$
\begin{bmatrix}
1-R_{a} & -B_{e} \\\\
-R_{e} & 1-B_{a}
\end{bmatrix} \times
\begin{bmatrix}
R_t \\\\
B_t
\end{bmatrix} =
\begin{bmatrix}
R_{t+1} \\\\
B_{t+1}
\end{bmatrix}
$$

This construction is a type of dynamical system called a difference equation.

The simulation continues until an army's strength dips below the surrender threshold \\(s \in [0, 1)\\) times its initial strength, at which point the simulation ends. We built a matrix library in Python to perform the computation, and we plotted the results with pyplot.

## Battle of Trafalgar

The Battle of Trafalgar was fought between the British admiral Horatio Nelson and a combined French and Spanish fleet headed by Vice Admiral Pierre-Charles Villeneuve. The battle is particularly notable for Nelson's unorthodox tactics. He sailed perpendicularly into the enemy fleet, instead of engaging broadside, as was standard at the time. We compare his strategy with standard practice.

{{< figure src="trafalgar.png" caption="The order of sailing and therefore of battle of the two contending forces shortly before impact during the Battle of Trafalgar. The large arrows depict the direction of motion of the three columns." >}}

We choose red to represent the British and blue to represent the French and Spanish. We first conclude that \\(R_a = B_a = 0\\) since the battle lasted only five hours. There was simply no time for disease or starvation to take place.

Next, we establish the starting strengths. The British had 27 ship of the lines and the French and Spanish a total of 33. There were auxiliary crafts on both sides including multiple frigates, a sloop, and a schooner, but they did not engage, so they are discounted. Due to the huge variability in size of the ship of the lines (they range from 64-gun ships to 136-gun ships), we choose the total number of guns as our strength metric for each side. By summing the total number of guns on the ships of the lines before the battle began, we arrive at \\(R_0 = 2152\\) and \\(B_0 = 2632\\).

Finally, we find the effectiveness values. To do this, we must compare the seamanship of the two sides.

> A typical broadside of a Royal Navy ship of the late 18th century could be fired 2–3 times in approximately 5 minutes, depending on the training of the crew, a well trained one being essential to the simple yet detailed process of preparing to fire.

We can take the high estimate of a shot every 3 minutes since the best mariners in Britain were likely to be at this battle. But how does that compare to the French and Spanish?

> However, their general expectations of what could be demanded from their gun crews were lower than the British, so that the British rate of fire and endurance surprised them at Trafalgar. Certainly the British seamen were better trained at their guns than the allies, and, moreover, they had the morale stimulus of a decade of victorious gunnery actions.

Clearly, the French and Spanish were significantly slower. As a rough estimate, let's say they were 1.5 times as slow, meaning that they fire 2 shots every 5 minutes. Because this statistic is already in minutes, we choose the simulation time steps to be measured in minutes.

Next, we have to determine how many of those shots actually hit. This, of course, depends on a number of factors including distance from the target and type of cannon, which makes it very hard to calculate. It is known that both sides used smoothbore cannons, which can be inaccurate at longer ranges due to the Magnus Effect. Also, we know from the diagram that engagements were being made, at times, from kilometers away, and initially, many shots went astray. We will thus set accuracy to be 25% for the battle.

Now, we estimate the damage of each cannonball. When two ships were within several hundred yards of each other, they would ordinarily fire at the enemy mast and rigging in order to hinder enemy movement. Ship of the lines usually had multiple masts, so it took quite a while to completely destroy them. When ships got in direct range of each other, they began firing into the enemy hulls. This was mostly done above the waterline because shots fired below the waterline would usually skip off the surface or else not have the momentum to puncture the enemy hull. Even when the hull was punctured by a cannonball, the hole it created could usually be patched by the crew with shot-plugs. All in all, we estimate that it takes 30 cannonballs to completely disable and capture the average ship of the line.

This leads to the following equations for captures per minute per ship:

$$R_e = \frac{3 \text{ shots}}{5 \text{ minutes}} \times \frac{1 \text{ hit}}{4 \text{ shots}} \times \frac{1 \text{ capture}}{30 \text{ hits}} = \frac{1 \text{ capture}}{250 \text{ minutes}}$$

$$B_e = \frac{2 \text{ shots}}{5 \text{ minutes}} \times \frac{1 \text{ hit}}{4 \text{ shots}} \times \frac{1 \text{ capture}}{30 \text{ hits}} = \frac{1 \text{ capture}}{300 \text{ minutes}}$$

Then the matrix equation becomes:

$$
\begin{bmatrix}
1 & -0.00\overline{3} \\\\
-0.004 & 1
\end{bmatrix} \times
\begin{bmatrix}
R_t \\\\
B_t
\end{bmatrix} =
\begin{bmatrix}
R_{t+1} \\\\
B_{t+1}
\end{bmatrix}
$$

The model can be confusing, so here is a brief explanation on how to interpret it: the number of British guns at minute \\(t + 1\\) is equal to the number of British guns at minute \\(t\\) minus the number of French and Spanish guns at time \\(t\\) multiplied by the number of captures per minute for the French and Spanish. Multiplying guns by captures per minute simplifies to gun captures per minute at time \\(t\\), so this second number is just subtracting the guns that were captured.

Since the real battle resulted in a French and Spanish retreat after 22 out of 33 ships were captured or destroyed, we set \\(s = 1/3\\). Running the simulation with these parameters gives the result seen in the figure below. Given that the real battle lasted roughly five hours and our simulation lasted about four and a half, our approximations seem relatively accurate.

{{< figure src="broadside_battle.png" caption="The Battle of Trafalgar under normal tactical strategies. The French and Spanish are narrowly victorious and the British are forced to retreat." >}}

{{< figure src="nelson_strategy.png" caption="The Battle of Trafalgar with Horatio Nelson's strategy. It results in a resounding British victory." >}}

However, this simulation discounts the British admiral Horatio Nelson's unorthodox strategy. He split his fleet into two columns and sailed perpendicularly into the enemy in order to take advantage of their poor formation. Nelson attempted to cut off the French flagship, the *Bucentaure*, exposing the center of the fleet and hampering communication.

While the British weather column engaged with the center of the enemy fleet, the British lee column engaged with the tail of the Franco-Spanish fleet. Quickly, the British weather column regrouped with the lee column to help attack the tail, and then the combined fleet attacked the remaining head of the Franco-Spanish fleet. While this is a massive oversimplification, it will serve to roughly estimate the impact of Nelson's strategy on the outcome of the battle. We represent each time a fleet is reinforced by adding a gun vector, representing a different fleet, to the current state and then we continue the battle. Once again taking \\(s = 1/3\\) for each individual engagement, we run the simulation and arrive at the graph seen above. This time, the British decisively defeat the French and Spanish.

## Conclusions

We conclude that Admiral Nelson's unorthodox tactic of sailing perpendicularly into the enemy fleet may well have won him the battle, saving Britain from a French invasion.
