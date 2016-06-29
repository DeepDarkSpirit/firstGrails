package firstgrails
//Ժʿ
class Academician {

    String electionYear//[��ѡ���] [nchar](4) NOT NULL,
    Integer candidateID//[��ѡ��ID] [int] NOT NULL,
    String nominationID//[�������] [nvarchar](10) NULL,
    String name//[����] [nvarchar](30) NOT NULL,
    Integer age//[����] [int](18-70) NOT NULL,
    String disciplines//[ѧ��רҵ] [nchar] NULL,
    String organization//[������λ] [nchar] NULL,

    String division//ѧ��ID] [int] NULL,
    String idType//[֤������] [nvarchar](10) NOT NULL CONSTRAINT [DF__��ѡ��__֤������__534D60F1]  DEFAULT ('�������֤'),
    String idnum//[֤������] [nvarchar](30)NULL,
    String ethnicity//[����ID]
    String nation//[�������ID] [int] NULL CONSTRAINT [DF__��ѡ��__�������ID__5441852A]  DEFAULT ((1)),
    String state// [����ʡ��ID] [int] NULL,
    String degree//[ѧ��] [int] NULL,
    String death//[�Ƿ�ȥ��] [nchar](1) NOT NULL DEFAULT ('��'),
    String deathDay//[ȥ������] [datetime] NULL,
    String recall //[�Ƿ����] [nchar](1) NOT NULL DEFAULT ('��'),

    static constraints = {
        candidateID()
        name()
        electionYear(nullable: true,size:4..4)
        division(nullable: true)
        idType(nullable: true)
        idnum(nullable: true)
        ethnicity(nullable: true)
        nation(nullable: true)
        state(nullable: true)
        degree(nullable: true)
        death(nullable: true)
        deathDay(nullable: true)
        recall(nullable: true)
    }
}
