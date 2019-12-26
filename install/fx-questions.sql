/*
  QUESTIONS
*/
CREATE TABLE questions (
  id int(11) auto_increment,
  question text,
  alt1 text,
  alt2 text,
  alt3 text,
  alt4 text,
  alt5 text,
  answer int(1),
  subject varchar(30),
  numAnswered int(11),
  numRight int(11),
  numWrong int(11),
  numFav int(11),
  dateRegister datetime,
  primary key(id)
);

/*
  STUDY RESPONSE STATISTICS
*/
CREATE TABLE statsStudent (
  id int(11) auto_increment,
  numAnswered int(11),
  numRight int(11),
  numWrong int(11),
  primary key(id)
);

/*
  RECORD OF STUDENT RESPONSES FOR PERIODAL STATISTICAL ANALYSIS
*/
CREATE TABLE logStudentAnswered (
  id int(11) auto_increment,
  idUser int(11),
  idQuestion int(11),
  numRight int(11),
  numWrong int(11),
  dataAns datetime,
  primary key(id)
);

/*
  SUBJECT SUGGESTIONS DATABASE FOR AUTOCOMPLETE
*/
CREATE TABLE subjects (
  id int(11) auto_increment,
  subject varchar(30),
  numQuestions int(11),
  primary key(id)
);

/*
  REGISTRO DE QUESTÕES FAVORITAS DOS ALUNOS
*/
CREATE TABLE favQuestions (
  id int(11) auto_increment,
  idUser int(11),
  idQuestion int(11),
  primary key(id)
);

/*
  WEBSITE SETTINGS
*/
CREATE TABLE configs (
  id int(11) auto_increment,
  siteTitle varchar(30),
  siteName varchar(30),
  signupFrontEnd int(1),
  primary key(id)
);

