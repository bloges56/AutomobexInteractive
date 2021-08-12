USE [RISE]
GO


insert into [User] (UserName, Email, IsActive, IsAdmin) values ('hgyngyll0', 'swhiskerd0@bizjournals.com', 1, 0);
insert into [User] (UserName, Email, IsActive, IsAdmin) values ('jrofe1', 'lspear1@about.com', 1, 0);
insert into [User] (UserName, Email, IsActive, IsAdmin) values ('commundsen2', 'gtippin2@nature.com', 1, 1);
insert into [User] (UserName, Email, IsActive, IsAdmin) values ('ptroker3', 'rgoadby3@amazon.com', 1, 0);
insert into [User] (UserName, Email, IsActive, IsAdmin) values ('fdunkley4', 'lroddam4@sbwire.com', 1, 1);
insert into [User] (UserName, Email, IsActive, IsAdmin) values ('ctollfree5', 'kgascoyen5@mail.ru', 1, 1);


insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('Hatity', '2021-09-27 01:36:32', 'https://umich.edu/magna/ac/consequat.xml', '3 Toban Crossing', 1, 0, 1);
insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('Opela', '2021-09-13 10:35:31', 'http://state.gov/cras/non/velit.aspx', '5159 Golf Way', 2, 0, 1);
insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('Sub-Ex', '2021-09-12 14:28:37', 'http://boston.com/sapien/sapien/non/mi.html', '3261 Rutledge Park', 3, 0, 0);
insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('It', '2021-08-15 09:25:47', 'http://taobao.com/sapien/in/sapien/iaculis/congue.png', '1 Stone Corner Point', 4, 1, 0);
insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('Gembucket', '2021-09-15 09:31:01', 'https://tiny.cc/curae/nulla/dapibus.js', '5565 Brentwood Trail', 5, 0, 1);
insert into [Event] (Title, Time, Link, Address, OwnerId, IsApproved, IsSponsored) values ('Viva', '2021-09-07 23:56:00', 'https://cloudflare.com/pellentesque/ultrices/phasellus/id.aspx', '5 Macpherson Place', 6, 0, 0);



insert into [UserEvent] (EventId, UserId, IsConfirmed) values (1, 1, 1);
insert into [UserEvent] (EventId, UserId, IsConfirmed) values (2, 1, 0);
insert into [UserEvent] (EventId, UserId, IsConfirmed) values (3, 1, 0);
insert into [UserEvent] (EventId, UserId, IsConfirmed) values (4, 1, 0);
insert into [UserEvent] (EventId, UserId, IsConfirmed) values (5, 1, 1);
insert into [UserEvent] (EventId, UserId, IsConfirmed) values (6, 1, 1);


INSERT INTO [Survey] (Title, EndDate, IsOpen) VALUES ('Employee Satisfaction Survey', '2021-09-30', 1);

insert into [Question] (QuestionText) values ('feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea');
insert into [Question] (QuestionText) values ('id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate');
insert into [Question] (QuestionText) values ('aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet');
insert into [Question] (QuestionText) values ('nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in');
insert into [Question] (QuestionText) values ('massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in');
insert into [Question] (QuestionText) values ('cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at');
insert into [Question] (QuestionText) values ('erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in');
insert into [Question] (QuestionText) values ('sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede');
insert into [Question] (QuestionText) values ('non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla');
insert into [Question] (QuestionText) values ('rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet');
insert into [Question] (QuestionText) values ('lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus');
insert into [Question] (QuestionText) values ('volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus');
insert into [Question] (QuestionText) values ('mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus');
insert into [Question] (QuestionText) values ('massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in');
insert into [Question] (QuestionText) values ('tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu');
insert into [Question] (QuestionText) values ('ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus');
insert into [Question] (QuestionText) values ('ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi');
insert into [Question] (QuestionText) values ('vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes');
insert into [Question] (QuestionText) values ('metus aenean fermentum donec ut mauris eget massa tempor convallis');
insert into [Question] (QuestionText) values ('ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus');

insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 1);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 2);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 3);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 4);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 5);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 6);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 7);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 8);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 9);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 10);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 11);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 12);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 13);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 14);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 15);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 16);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 17);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 18);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 19);
insert into [SurveyQuestion] (SurveyId, QuestionId) values (1, 20);

insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (1, 1, 1);
insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (2, 1, 0);
insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (3, 1, 1);
insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (4, 1, 0);
insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (5, 1, 0);
insert into [UserSurvey] (UserId, SurveyId, IsCompleted) values (6, 1, 0);

insert into [Coffee] (UserId, OtherId) values (1, 3)
