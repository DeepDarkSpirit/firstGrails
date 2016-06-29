package firstgrails

class BallotResult {
    BallotContent ballotContent
    Integer candidateID//[候选人ID] [int] NOT NULL,
    Integer aNum//[A数量] [int] NULL,
    Integer bNum//[B数量] [int] NULL,
    Integer cNum//[C数量] [int] NULL,
    Integer dNum//[D数量] [int] NULL,
    Integer eNum//[E数量] [int] NULL,
    BigDecimal score// [分数] [decimal](10, 4) NULL,


    String nominationID//[提名书号] [nvarchar](10) NULL,
    String name//[姓名] [nvarchar](30) NOT NULL,
    Integer age//[年龄] [int](18-70) NOT NULL,
    String disciplines//[学科专业] [nchar] NULL,
    String organization//[工作单位] [nchar] NULL,
    static constraints = {
        aNum(nullable: true)
        bNum(nullable: true)
        cNum(nullable: true)
        dNum(nullable: true)
        eNum(nullable: true)
        score(nullable: true)
    }
}
