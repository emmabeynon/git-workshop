# How to commit

## Guidelines
- The commit subject line is a summary of **what** the code changes are
  - It should start with an imperative verb e.g. 'Add..', 'Change..', 'Update..'
  - Try to keep to 72 characters to avoid having to unfurl a subject line
- The commit body is **why** you made the code changes
  - Is there anything a future reader should know?
  - Is there some context that would be helpful for a future reader?
- Capitalize your subject line and sentences.
- Make use of paragraphs (separated by a blank line) or bullet points to illustrate your commit message.

## Things to think about
- Did you make a code change and all your tests are passing?  It's probably time to commit.
- Are the code changes in the commit small and understandable?
  - Does the commit contain a specific change, or several changes? If there are several changes, should it be broken down into several commits?
- Try not to repeat what the code changes are in the commit message. The reader can see can already see those.
- Use Git history as documentation.
  - Will this code be changing soon?
  - Was there a product decision that led to this code change?
  - Was there a bug that led to this code change? How does this solve the bug?
- Does the commit add anything valuable to the story of your code?
  - Commits like 'WIP', 'Fix texts', 'Typo' typically don't add much value.
- Any new or updated tests as a result of your code change should be included in the commit.
