package firstgrails
//选举轮候选人
class TurnCandidate {
    String electionYear//[增选年度] [nchar](4) NOT NULL,

    Integer candidateID//[候选人ID] [int] NOT NULL,
    Division division

    String nominationID//[提名书号] [nvarchar](10) NULL,
    String name//[姓名] [nvarchar](30) NOT NULL,
    Integer age//[年龄] [int](18-70) NOT NULL,
    String disciplines//[学科专业] [nchar] NULL,
    String organization//[工作单位] [nchar] NULL,

    Integer turnID//[轮ID] [int] NOT NULL,
    String pass//[是否通过] [nchar](1) NULL,

    static constraints = {
        candidateID()
        name()
        electionYear(size:4..4)
        pass(nullable: true,size:1..1)
    }
}
