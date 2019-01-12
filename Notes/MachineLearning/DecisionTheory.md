## Decision Theory

Decision Theory is about *Minimize expected loss* of a decision e.g. classification or regression.

An Email Spam filter is a good example. We can classify mails as ham or spam. The loss of getting a mail, that was actually spam is not very costlt, however filtering an important mail can be potentially harmful.

A loss matrix could look like:

![Spam Filter loss function](./figures/spamham.png)

The are different kind of loss functions e.g. 

- "1-0" loss function, that either classifies correctly (l=0) or incorrectly (l=1). 
- Squared loss function, that squared the loss, typically used in regressions.

Statistically we wish the smallest loss on average. Using "1-0" loss function we classify based on the conditional probability $p(y|x)$. The optimization problem can be described as; $$\hat{y} = \underset{y}{\operatorname{arg\ min}}\ p(y|x)$$ Is also called maximum likelihood classification.

State of nature

