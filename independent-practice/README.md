# Independent Practice

## Instructions

### Do this one time:

1. Clone this repository in your actualize folder:

```
git clone https://github.com/actualize-chi-2022-05/independent-practice.git
```

2. Change directory into that new repo:

```
cd independent-practice
```

3. Make a branch using your unique GitHub username:

```
git checkout -b YOUR-GITHUB-USERNAME-GOES-HERE
```

4. Make a rule to prevent accidental pushes to the main branch:

```bash
echo "if [[ \$(ps -ocommand= -p \$PPID) =~ 'main' ]]; then echo; echo 'Prevented push to main branch.'; echo 'Please push your personal branch instead.'; echo; exit 1; fi; exit 0" >> .git/hooks/pre-push
chmod +x .git/hooks/pre-push
```

### Do this every time you complete an exercise:

Commit each working change:

```
git add --all
git commit -m "your commit message goes here"
```

Submit your exercises by pushing your branch up to GitHub:

```
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```

### Do this at the start of each new week:

Pull down the new exercises into your repository.

```
git pull origin main --no-edit
```
### Week 5

|       | Deliberate Practice (mandatory)                         | Deep Dives (optional, see [readme](DEEPDIVES_README.md) |
| ----- | ------------------------------------------------------- | ------------------------------------------------------- |
| Day 1 | [Has Many Through](w05/has_many_through)                | [Quicknotes](w05/quicknotes)                           |
| Day 2 | [Has Many Through 2](w05/has_many_through_2)            | [Firebase](w05/firebase)                                |
| Day 3 | [Third Party APIs](w05/third_party_apis)                | [Firebase](w05/firebase)                                |
| Day 4 | [Rails Guide Exploration](w05/rails_guides_exploration) | [Take Home #1](w05/takehome_1)                          |
| Day 5 | [Ruby Methods 4](w05/ruby_methods_4)                    | [Take Home #1](w05/takehome_1)                          |

### Week 4

|       | Deliberate Practice (mandatory)          | Deep Dives (optional, see [readme](DEEPDIVES_README.md) |
| ----- | ---------------------------------------- | ------------------------------------------------------- |
| Day 1 | [Validations](w04/validations)           | [Randomizer Gem](w04/randomizer_gem)                    |
| Day 2 | [Has Many](w04/has_many)                 | [Randomizer Gem](w04/randomizer_gem)                    |
| Day 3 | [Ruby Methods 3](w04/ruby_methods_3)     | [Randomizer Gem](w04/randomizer_gem)                    |
| Day 4 | [Authentication](w04/authentication)     | [Lights Out](w04/lights_out)                            |
| Day 5 | [Authorization](w04/authorization)       | [Tic Tac Toe](w04/tic_tac_toe)                          |


### Week 3

|       | Deliberate Practice (mandatory)      | Deep Dives (optional, see [readme](DEEPDIVES_README.md)) |
| ----- | ------------------------------------ | -------------------------------------------------------- |
| Day 1 | No homework :)                       |                                                          |
| Day 2 | [Params](w03/params)                 | [Temperatures](w03/temperatures)                         |
| Day 3 | [Restful APIs](w03/restful_apis)     | [Phonebook](w03/phonebook)                               |
| Day 4 | [Ruby Methods 2](w03/ruby_methods_2) | [Playlist](w03/playlist)                                 |
| Day 5 | [Migrations](w03/migrations)         | [Nobel Prize Winners](w03/nobel_prize_winners)           |


### Week 2

|       | Deliberate Practice (mandatory)            | Deep Dives (optional, see [readme](DEEPDIVES_README.md)) |
| ----- | ------------------------------------------ | -------------------------------------------------------- |
| Day 1 | [Intro to APIs](w02/intro_to_apis)         | [Budget](w02/05_budget)                                  |
| Day 2 | [Babys First Rails](w02/babys_first_rails) | [Book Report](w02/06_book_report)                        |
| Day 3 | No homework :)                             |                                                          |
| Day 4 | [Be CRUDdy](w02/be_cruddy)                 | [ETL](w02/07_etl)                                        |
| Day 5 | [More CRUD](w02/more_crud)                 | [Anagrams](w02/08_anagrams)                              |


### Week 1

|       | Deliberate Practice (mandatory)      | Deep Dives (optional, see [readme](DEEPDIVES_README.md)) |
| ----- | ------------------------------------ | -------------------------------------------------------- |
| Day 1 | [Terminal](w01/terminal)             |                                                          |
| Day 2 | [Git and GitHub](w01/git_and_github) | [Grades](w01/01_grades)                                  |
| Day 3 | [Ruby Core](w01/ruby_core)           | [Bob](w01/02_bob)                                        |
| Day 4 | [Ruby OOP](w01/ruby_oop)             | [Isbn](w01/03_isbn)                                      |
| Day 5 | [Ruby Methods](w01/ruby_methods)     | [Todo](w01/04_todo)                                      |