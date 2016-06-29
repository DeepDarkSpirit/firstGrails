package firstgrails
//ѡ���ֺ�ѡ��
class TurnCandidate {
    String electionYear//[��ѡ���] [nchar](4) NOT NULL,

    Integer candidateID//[��ѡ��ID] [int] NOT NULL,
    Division division

    String nominationID//[�������] [nvarchar](10) NULL,
    String name//[����] [nvarchar](30) NOT NULL,
    Integer age//[����] [int](18-70) NOT NULL,
    String disciplines//[ѧ��רҵ] [nchar] NULL,
    String organization//[������λ] [nchar] NULL,

    Integer turnID//[��ID] [int] NOT NULL,
    String pass//[�Ƿ�ͨ��] [nchar](1) NULL,

    static constraints = {
        candidateID()
        name()
        electionYear(size:4..4)
        pass(nullable: true,size:1..1)
    }
}
