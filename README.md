# CMU Interactive Data Science Final Project
* **Title**: Interactive Happy Moment Analysis
* **Team members**:
  * Contact person: Xiaoyu Sun (seansun@andrew.cmu.edu)
  * Liyun Tu (liyunt@andrew.cmu.edu)
  * Shengli Zhu (shengliz@andrew.cmu.edu)
  * Xi Chen (xc3@andrew.cmu.edu)
* **Track**: Narrative 
* **Link to paper**
* **Link to Video**
* **Link to Application**: http://0.0.0.0:8000/ (Running locally)

## Summary Image
![Summary Image](https://www.linkpicture.com/q/Screen-Shot-2020-12-10-at-9.06.31-PM.png)
## Abstract

## Work distribution

- Xi and ShengLi: responsible for building the entire frontend framework and creating backgound images 
- Liyun: built the backend framework including preparing data and training models and added the model illustration section in the website.
- Xiaoyu: added the interactive bar plot section in the website and recorded design review and final videos. 

## Running Instructions
**Step 1** - create virtual environment and instal db [first time running our application]:       
rm -rf env          
/usr/local/bin/python3 -m venv env         
source env/bin/activate        
pip install -e .           
brew install sqlite3 curl          

Step 1 - create virtual environment [second time or later]:             
source env/bin/activate        

**Step 2** - command to run web on localhost:       
./bin/RNNVisrun   

**Step 3** - open our web interface:        
http://0.0.0.0:8000/    

**To deactivate virtual environment:**       
deactivate           
echo $PATH | tr ':' '\n'   

## Commentary on project process

## Deliverables

### Proposal

- [ ] The URL at the top of this readme needs to point to your application online. It should also list the names of the team members.
- [ ] A completed proposal. The contact should submit it as a PDF on Canvas.

### Design review

- [ ] Develop a prototype of your project.
- [ ] Create a 5 minute video to demonstrate your project and lists any question you have for the course staff. The contact should submit the video on Canvas.

### Final deliverables

- [ ] All code for the project should be in the repo.
- [ ] A 5 minute video demonstration.
- [ ] Update Readme according to Canvas instructions.
- [ ] A detailed project report. The contact should submit the video and report as a PDF on Canvas.
