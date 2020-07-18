# Customer Analytics - Note

## Week 1 - Introduction to Customer Analytics

What is Market Research
* links the market to the *firm* through *information*
* information needed for actionable deciions
* principles for systematically *collecting* and *interpreting* data to aid decision makes

Types of Marketing Research
* Exploratory Research (Ambiguous Problem with Survey)
* Descriptive Research (Aware of Problem with Passive Data Collection)
* Causal Research




## Week 2 - Descriptive Analytics

* Net Promoter Score (NPS)
	* A single quesion: How likely is it that you would recommend a brand/company to a friend or colleague? 
	* 0-10 Scale
		* Promoters (9-10) [推荐者]
		* Passives (7-8) [消极者]
		* Detractors (0-6) [批评者]
	* NPS = Promoters % - Detractors %
	* Cons: similar to ASCI (has higher R-square with industry growth than NPS does)

* How to measure customer satisfaction
	* Readily Available
		* Operational measures
		* Complaints analysis
		* Ratings and reviews
	* Derived From Other Activities
		* Focus groups
		* Employee reports
	* Focused Efforts
		* Mystery shopping
		* Satisfaction survey

* NPS is related with Profitability
	* Customer satisfaction is positvely correlated wth profitability.
	* But only limited part of firm performance --> The link is weaker than what managers generally think.
	* Profitability vs. Satisfaction
		* Linked non-linear
		* Dissatified: Zone of Pain (positive) --> Satisfied (long flat) --> Delighted (positve again) [[1]](#1)

* Questions to Think when applying NPS
	* What is the metric capturing?
	* How does it compare with other metrics?
	* How does the metric link with managerial outcomes?

* Survey Design
	* Steps in Survey Design
		1. Make sure your results are generalizable to an appropriate population. [IMPORTANT!]
			* Population has been defined correctly.
			* Sample is representative of the population.
			* Respondents selected to be interviewed are available and willing to cooperate.
			* Respondents understand the question and have knowledge. 
			* Motivate them to provide information (incentive) 
				--> Low Response Rate --> Compare respondents vs. non-respondent, AB Testing, Follow-up with Cohort Analysis
		2. Develop detailed listing of "bits" of information.
			* Translate research objectives into information requirements.
		3. Determine appropriate data collection method for each question.
			* Measure of information
			* Exploratory research using open-ended questions
			* Use the results from exploratory for quantitative survey designing with close-ended questions
		4. Write draft questions.
			* Simple, conventional language
			* Avoid leading, ambiguity, long questions
			* Start broad and then narrow down
		5. Sequence and Layout Deicisions.
			* Layout: smooth and logical flow, from general to specific, put sensitive/difficult ones later
			* Order bias: fatigue, randomize the order for each responder
		6. Evaluate/Pilot Test/Redraft.
		7. Get approval from all parties. [Key in consulting]
		8. Polit Test/Redraft. [Iterative Process]
		9. Final copy/Inplementation.
	* Summary:
		* Conduct a mini "market research" when designing a questionnaire (format, layout, language, order, etc.)
		* Search for and use proven questions
		* Pretest questionnaire (eg. test with small group)
		* Always think of the end goal

* Passive/Obtrusive Data Collection
	* Example methods:
		* Scanner data
			* Data Chain: manufacturers >> warehouse/distribution centers >> supermarkets >> households
			* Data Cube： Geography x Product x Time x Variable
			* Aggregation: Region, SKU groups, temporal
			* Agencies (Nielsen, IRi, SPINS): Completeness, Timeliness, Accuracy. Missing out data, Can't make causal statements, No behaviors/pcychographics, No info of full picture
		* TV planning
			* Questions to ask: who is watching? how is the viewership pattern changing over time? Ad spend?
		* Social Media/Web data
			* Questions to ask: audience engagement? brand mentions? Sentiment analysis? 
			* Types of SM: Earned Media, Paid Media, Owned Media
		* Mobile data
			* Customer behavior on desktop vs. mobile
			* Location-based info

* Causal Data Collection 
	* Correlation (relationship between two variables)
	* Causation (one variable producing an effect in another variable)
		* Correlation (association between X and Y)
		* Temporal antecedence (X must occur before Y)
		* No third factor driving both (control of other possible factors)
	* Field experiments (AB testing) comes in to prove the causation. 
	* Managerial Questions:
		* Website optimization
		* Mobile app design
		* Customized design


* Readings:
	* Are Your Customers ‘Clumpy’? (aka. Binge) [[2]](#2)
		* Whole sections of the population are consuming digital products and services in a “clumping” pattern that features extended periods of inactivity punctuated by short, intense buying bursts.
		* Customer values measure: RFM segmentation + Clumpiness
		* **Clumpiness** refers to the fact that people buy in bursts. 
		* **Burst** periods indicate those customers could be extremely valuable. Higher clumpy customers are worth more out of sample. 
		* Hot and cold periods are indicative of something about the customer. It’s true for digital and online consumption goods (eg. Hulu, Amazon), but it’s not true for regular consumer package goods (eg. juice, toilet paper).
		* Even though customers have churned, if you reactivate them, they’ll come back and be clumpy again, and do a lot of stuff in the future.
		* Data Compression: data collection to get the information that is actually useful for the business problem at hand.
		* Inter-arrival times: when’s the last time you came and how many times had you come?
		* I personally believe there are clumpy-type people and non-clumpy-type people.
		* e-mail has more of a short-term effect, as you would expect. A catalog has more of a longer-term effect.

	* Predicting — and Monetizing — the Lifespan of a Tweet [[3]](#3)
		* Twouija: Understanding this type of information spreading would potentially allow one to predict which trends, memes or ideas will become popular, how popular they will become and how quickly they will become popular.
		* It took between four minutes to three hours for an update to reach 50% of its total retweet count.


## Week 3 - Predictive Analytics

* Types:
	* Making predictions on period ahead
	* Making predictions more than two periods ahead
	
* Regression Analysis
	* Quantify the relationship among dependent variable and multiple independent variables with a linear additive relation. 
	* R-squared (Coefficient of Determination): the proportion of the variance in the DepVar that can be explained by IndVars. (Good >70%)
		* y^ = AVG(yi)
		* ss_tot = SUM(yi - y^)^2
		* ss_reg = SUM(fi - y^)^2
		* ss_res = SUM(yi - fi)^2
		* R_squared = 1 - ss_res/ss_tot
	* Optimal price: price that maximizes overall profit --> Revenue & Profit

* RFM
	* R(Recency) > F(Frequency) > M(Monetary)
	* It's important for companies to look at their customers at the cohort basis.
	
* Probility Models
	* Allow the prediction to go below the surface of obvious drivers --> use invisible variables
	* The coin can vary across people in lots of different ways. --> distributions
	* Multiple coins to throw along the purchase process. --> Survival Rate X Purchase Rate
	* Probability Table: Total Number of Transactions vs. Year of Last Transaction

* Predictive Analytics --> Prescriptive Analytics
	* what decisions to make on the basis on the predictions.

* Readings:
	* Customer Centricity: Customer Lifetime Value
		* CLV is the present value of the future case flows associated with a particular customer. 
		* CLV is a forward-looking concept, from now until eternity - not past profitability.
		* It is essential to use only relevant data to calculate CLV - only the most direct revenue/cost
		* CLV calculations are predictive, not precise - CLV is an educated guess.
		* Different methods are used to calculate CLV in different kinds of business settings - contractual vs. non-contractual
			* Retention/Churn apply specifically and exclusively to the contractual settings
			* Repeated purchase is for non-contractual firms --> MRR (monthly recurring revenue)
		* CLV helps companies to understand: 
			* what their customers are actually worth (individual or group)
			* estimate the value of overall customer equity
			* divide customers into tangible segments, separating the most valuable and committed customers from the least ones
			* refine marketing practices and ensure the right approaches
			* better predict how certain customers in certain situation may act going forward
			* ensure that resources are used most efficiently in efforts to retain and develop existing and acquire new ones.
		* Flaws in Traditional Methods:
			* New customers should be treated the same as customers who have been around for years. 
			* Calculate the CLV for one massive homogenous group and "the average customer". The value of sum of individual customers is not equal to the value of collective customer equity. 
		* The simple act of customer segmentation can give you a clearer sense of overall customer equity. 
		* The retention dynamics that we tend to see in a contractual setting have little or nothing to do with customers becoming more loyal over time.
		* Average Customer Lifetime = 1/churn rate = 1/(churned cust / tot cust)
		* Net Revenue Churn Rate = (Churned MRR - Expansion MRR) / Total Initial MRR --> expansion is from existing customers rather than new ones
		* When companies fail to apply segmentation to the study of their customer base, they will grossly undervalue that customer base.

	* Customer Centricity with Wharton's Dr. Peter Fader [[4]](#4)
		* Customer centricity is when the brand identifies the most valuable customers and surrounds them with relevant products and services. 


## Week 4 - Prescriptive Analytics

* What is Prescriptive Analytics
	* Provides a recommendation (prescription) on what actions to take to achieve some objective goals. 
	
	* Defining a problem
		* a set of goals to optimize
		* a set of actions we can take to achieve this goal (eg. change price, display ads, buy products, etc.)
		* a model to describe how the actions impact the goal
	
	* Optimization Profit
		* Compare the increase of Revenue and the decrease of Cost when Price changes --> change price until the gain in profit is 0
		* MR = MC (marginal revenue = marginal cost) --> the revenue/cost change when selling one more item
		* Using MR=MC to get the quantity of items --> Locate the coresponding Price
	
	* Market Structure
		* Part of the model
			* how do my actions affect outcomes
			* who else is also active in my market
		* Williness to Pay
			* WTP: how much (at most) would a consumer pay for an additional item that she already buys
		* Optimal Bundle

	* Competition & Onling Advertising
		* Strategic interaction --> Game theory
		


## Week 5 - Application & Case Studies
Explore real-world examples of the five-pronged attack to apply customer analytics to marketing, starting with data collection and data exploration, moving toward building predictive models and optimization, and continuing all the way to data-driven decision. 

* The future of marketing is customer analytics: Making profit one customer at a time.

* Customer Analytics:
	* refers to th ecollection, management, analysis and strategic leverage of an organization's granular data about the behavior of its customers. 
	* can be characterized as:
		* Inherently granular: a focus on individual-level behavior, not aggragate patterns.
		* Behavioral: primary focus is on observed behavioral pattern, not demographics or attitudes. 
		* Forward-looking: an orientation towards prediction, not just description.
		* Multi-platform: desire to combine behaviors from multiple measurement systems. 
		* Broadly applicable: the definition of a "customer" is **industry agnostic** - it could be a user, reader, visitor, donor, clients, etc. 
		* Multidisciplinary: relevant fields include marketing, statistics, computer science, information science, and operations, etc. 
	* Five-Pronged Attack framework:
		* data collection: if you don't measure it, it never happen. 
		* data exploration
		* predictive modeling: e.g. churn, clv
		* optimization
		* business decisioning

* Historical Data in Marketing
	* 1950s: store level data, store pricing
	* 1960s, 1970s: household level data, direct mail --> today: only run the experiments if you want to know the answer
	* 1980s: individual-level, store scanners, credit card, loyalty program
	* 1990s, 2000s: internet changes the face of marketing, targeting ads

* New Emerging Data Sets in Marketing
	* Advertising Attribution Problems
		* Last-click Attribution: 
			* Whatever the last thing you did, that gets you the credit. 
			* Understand the entire path of things that people are seeing. 
		* Channel Cannibalization Problem:
			* If one channel cannibalizes the other channel, that may not be a bad thing if the other on is more profitable. 
			* Gross Rating Point: GRP = Reach * Frequency is the currency of advertising to charge advertisers. 
			* Channels do not cannibalize each other in the long-term. The total engagement will increase due to the additional channels.
		* Price Discount Value
			* Direct Value + Indirect Value
		* ROI of Facebook Ads
			* Facebook does have predictive power above and beyond just traditional advertising. 
			* FB and online have greater short-term effects. 
			* TV has a longer carry-over effect. 

	* Radically New Data Sets in Marketing
		* In-store drivers of unplanned purchases
			* Shopping plan (intentions suvey)
			* Shopping path (rfid, geo-spacial data) - traverse vs. excursion
			* Field of vision (eye-cam)
			* Purchase (scanner data)
		* The Traveling Salesman Problem
			* TSP-Optimal path
			* Decomposition Results with Triangle Plot:
				* TSP-Optimal: avg TSP-Optimality=28% (72% movement in store is not required)
				* Travel Deviation (jiggliness of path)
				* Order Deviation (the wrong order of purchased items)
			* Paths with high order deviaion tend to be associated with more purchases. 
		* Eye Tracking Data
			* Recall (strong impact), Consideration (strong impact), Choice out of store (slight impact)

* Future of Marketing Science (beyond purchase)

* Predictive Analytics by Leading Firms
	* Kohl's: Smartphone Targeting
		* Geo-spacial location data by Wifi-network
		* Link data to the online personal data
		* Real-time discounts based on your location in store
	* NetFlixL Designing Content
		* Meta-tagging data
		* Create content based on the popular attritions
	* American Express Social Network-Based Churn Modeling
		* Scrap data from social media (NLP)
		* Predict the churning of customers 
	* Health Care Providers: Patient Health
		* Predict the future illness years earlier
	* Google Free Taxi
		* CLV = SUM( m * (r^t / (1+d)^t ) )
		* Partnering with retailer to provide customers a free ride to store
	* Starbucks: Customer Deals
		* Customer loyalty = No Deal
		* Give deals to cusotmers whose ROI is the highest - on the brink of loyalty
	* Call Centers: Call Ordering
	* Amazon: Ship before you buy
		* By the probability of customer buying, ship the item to a nearby store in advance.


##### [Reference]
<a id="1">[1]</a> 
Keiningham and Varva (2001), The Customer Delight Principle, page 16

<a id="2">[2]</a> 
https://knowledge.wharton.upenn.edu/article/what-marketers-need-to-know-about-binge-buying/

<a id="3">[3]</a> 
https://knowledge.wharton.upenn.edu/article/predicting-and-monetizing-the-lifespan-of-a-tweet/

<a id="4">[4]</a>
 https://www.forbes.com/sites/blakemorgan/2016/01/26/customer-centricity-with-whartons-dr-peter-fader/#24e1318d6aaa