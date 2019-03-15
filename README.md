# charliehotel
Tools
#1
Helpful:
- Permit collaboration - Without the powerful branching and merging functionality of source control systems like git, it would be extremly painful or impossible for a medium-sized or large team to all work on the same codebase at the same time.
- Revision history - Has multiple advantages:
  - Helps track the way in which your codebase has evovled.
  - Allows you to roll back to previous versions if need be.
  - Commit messages potentially provide information about what was changed and why.
- Flexibility - Allows more flexibility in day-to-day workflow; can easily create and switch between multiple branches).
- Code redundancy - Assuming you use a remote repository, your code is backed up to a separate machine in case your personal machine fails.

Annoying:
- Merge conflicts can be frustrating.
- Managing lots of branches can be difficult and confusing. You may end up with a person with the official (or unofficial) title of "Branch Manager."
- Certain aspects of git are arcane.

#2
Pros:
- Easier development and test processes:
  - Mitigates issues relating to dev machine peculariaty/uniqueness. Fewer instances of "works on my machine." This helps with both development and testing.
  - Portability - Generally, you'll need to do less setup to run a container because it comes packaged with everything that it needs. You won't need to keep your dev system up to date with certain package versions and libraries in order to run the code/processes within the container.
  - Usually pulling down and running a container is very easy. I have worked on software stacks where installing the latest version takes 10+ minutes, which really slows people down.
  - Containers lend themselves to unit testing and testing in isolation better than a monolith application.
  - There is some solace in the modularity of containers; if you make a code change to one type of container, you *know* that you have not made a code change another type of container. However, one container's behavior may still impact another. Making code changes to a monolith application does not have the same assurance.
- Easy versioning - The modularity of containers means you can version the entire thing.
- Logical separation of responsibilities - Containers tend to be small, which encourages adherence to the single responsibility principle. 
- Deployments can be smaller - If you make a small change to a monolith app, you must deploy the entire monolith app. If you make a small change to one type of container, you only need to deploy that one type of container. 
- Scalability - If you system is composed of containers and you have designed your containers well, then usually you can achieve very good horizontal scalablility with containers (just add more!). Does not always apply, though. This is *far* preferable to vertical scalability of a monolith app, wher you would need to move the entire app to a more powerful system.
- Potential cost savings - Due to ease of scalability, you can not only scale up as demand increases, but you can also scale down as demand decreases, saving infrastructure costs (assuming you're running in the Cloud).
- Less attachment to individual containers - Monolith apps are like pets: you take care of them so they don't die. Containers are like helpful gut bacteria: you appreciate them, but if one bacteria dies, you don't lose sleep over it and it will surely be replaced (hopefully without having to page you at 3am!).

Cons:
- Conceptually, containers are kinda weird to get used to.
- Visibility into what's happening in containers can be difficult.
- Sometimes containers are so stripped down that they lack any useful tools for debugging what's happening inside them. I once tried to debug what was wrong with a Linux container that didn't have vi, less, more, nano, or any other text manipulation tool I could think of. It didn't go well.
- If you have lots of containers, log volume can be high and it can be difficult to trace issues back to a particular container and determine what exactly went wrong with it.

#3
If I'm given a task that is limited in scope and likely will not be worked on by others, then I'll pick a language that I'm comfortable with, if I can get away with it (such as Ruby or Python). Sometimes you can't get away with it, though. For example, maybe you need a language that is very fast, so you can't use Ruby, you must use something like Java or even C instead. Another thing to consider is the ecosystem around the language. If you know a particular language has a really good library already available for doing a particular thing, then perhaps you select the language based on that availability. If I'm developing something that other members of the team will need to contribute to or extend, then I will also want to consider the comfort zone of the rest of the team. It's a bad idea to pick an obscure language, in that case, because if I'm the only one who knows the language, then other team members will be less inclined to help develop it or fix bugs with it. It's better to use a language that more/most of the team is comfortable with.

In this case, I chose Ruby because this code doesn't need to be fast, I am comfortable with Ruby, an I have no teammates to consider.

Testing Methodology
#1
QA's goal is to help ensure that the specified requirements of the software have been and continue to be met.

#2. I have never been a QA person, so this is difficult for me to answer. However, I will take a stab at it. 

At a broad level, QA is ultimately concerned with whether or not requirements are being met by the software being developed. With that in mind, QA must be aware of what the requirements are. In some organizations, QA will need to, at times, advocate for formal specification of requirements in order to ensure that there is a clear goal for developers to try to meet and for the QA persons to ultimately measure the produced software against. In a perfect world, it would probably be the responsibility of business development folks and managers to ensure that specifications are formalized, but that doesn't always happen.

In conversations I have had with QA folks, I know that developing a test plan is an important part of starting a process like this, but I can't go into much more detail than that, because I have not thought very deeply about QA in this way.

#3
Automated testing is preferable, but not always feasible, for different reasons.
