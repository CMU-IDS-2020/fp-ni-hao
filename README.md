# CMU Interactive Data Science Final Project
* **Title**: Interactive Happy Moment Analysis
* **Team members**:
  * Contact person: Xiaoyu Sun (seansun@andrew.cmu.edu)
  * Liyun Tu (liyunt@andrew.cmu.edu)
  * Shengli Zhu (shengliz@andrew.cmu.edu)
  * Xi Chen (xc3@andrew.cmu.edu)
* **Track**: Narrative 
* **Link to paper**
https://drive.google.com/file/d/1k5cUo6Blde1Kl8vwbGtFyZRE54FrXiuc/view?usp=sharing
* **Link to Video**
https://drive.google.com/file/d/1Hd2eFCV1_vAwmCzmMHvPVje6A7ZoLt3W/view?usp=sharing
* **Link to Application**
http://0.0.0.0:8000/ (Running locally)
Can deploy it online if needed

## Summary Image
![Summary Image](https://www.linkpicture.com/q/Screen-Shot-2020-12-10-at-9.06.31-PM.png)

## Abstract
Happiness is an important status for most of us, but it is hard to say what makes people happy. Understanding the factors that bring people happiness is the key to improve people’s happy experiences and overall life satisfaction. To guide users to explore a deeper understanding about their happiness source, we built an interactive website on happy moment (text) analysis in a storytelling fashion.
 
To generate analysis content, we trained multiple traditional machine learning and deep learning models for classifying happiness sources base on the HappyDB corpus. Out of accuracy and interpretability consideration, we chose logistic regression model (F1 score 0.836) for the website. For each prediction, we generated LIME plots for it to help explain how the classifier made the decision. For the entire HappyDB corpus, bar plots with example sentences were created to provide a summary of top words in each category.
 
The overall setting of the website would be summarizing happy experiences of 2020 as Christmas is coming. When users browse the website, they could input their own happy moment and see how "Santa" (pretended by model) guesses the happiness source. Then they could test their understanding of happiness by classifying others' happy experience and comparing with "Santa"'s analysis. Additional activities include exploring the summary barplots and playing with a bonus sentiment classification. Overall, we hope users could elicit new thoughts about their happy moments and a cheery Christmas holds lots of happiness for them.

## Work distribution

- Xi and ShengLi: responsible for building the entire frontend framework and creating backgound images 
- Liyun: built the backend framework including preparing data and training models and added the model illustration section in the website.
- Xiaoyu: added the interactive bar plot section in the website and recorded design review and final videos. 

## Running Instructions
**Step 1** - create virtual environment and instal db [first time running our application]:       
```
rm -rf env          
/usr/local/bin/python3 -m venv env         
source env/bin/activate        
pip install -e .           
brew install sqlite3 curl          
```
Step 1 - create virtual environment [second time or later]:   
```
source env/bin/activate
```

**Step 2** - command to run web on localhost:       
```
./bin/RNNVisrun
```

**Step 3** - open local host at port 8000:        
http://0.0.0.0:8000/    

**To deactivate virtual environment:**       
```
deactivate           
echo $PATH | tr ':' '\n'   
```
## Commentary on project process
Everyone in our team was very active and has done great work! 

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
