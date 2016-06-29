package firstgrails

class BallotResult {
    BallotContent ballotContent
    Integer candidateID//[��ѡ��ID] [int] NOT NULL,
    Integer aNum//[A����] [int] NULL,
    Integer bNum//[B����] [int] NULL,
    Integer cNum//[C����] [int] NULL,
    Integer dNum//[D����] [int] NULL,
    Integer eNum//[E����] [int] NULL,
    BigDecimal score// [����] [decimal](10, 4) NULL,


    String nominationID//[�������] [nvarchar](10) NULL,
    String name//[����] [nvarchar](30) NOT NULL,
    Integer age//[����] [int](18-70) NOT NULL,
    String disciplines//[ѧ��רҵ] [nchar] NULL,
    String organization//[������λ] [nchar] NULL,
    static constraints = {
        aNum(nullable: true)
        bNum(nullable: true)
        cNum(nullable: true)
        dNum(nullable: true)
        eNum(nullable: true)
        score(nullable: true)
    }
}
