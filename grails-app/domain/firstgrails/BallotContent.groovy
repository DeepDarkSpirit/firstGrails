package firstgrails
//ѡ��ͶƱ
class BallotContent {
    String electionYear//[��ѡ���] [nchar](4) NOT NULL,
    Date createTime//[����ʱ��] [datetime] NOT NULL DEFAULT (getdate()),
    Date modifyTime//[�޸�ʱ��] [datetime] NOT NULL DEFAULT (getdate()),
    String status//[״̬] [nchar](3) NOT NULL DEFAULT (N'�ѿ�ʼ'),
    String divisionID//[ѧ��ID] [int] NOT NULL,
    Integer roundID//[��ID] [int] NOT NULL,
    String groupID//[С��ID] [int] NULL,
    String type//[����] [nchar](2) NOT NULL,
    Integer times//[��] [int] NOT NULL,
    String way//[��ʽ] [nchar](2) NOT NULL,
    Integer columns//[ѡƱ������] [int] NULL,
    Integer aMax//[A����] [int] NULL,
    Integer aMin//[A����] [int] NULL,
    BigDecimal aScore//[A����] [decimal](10, 4) NULL,
    Integer bMax//[B����] [int] NULL,
    Integer bMin//[B����] [int] NULL,
    BigDecimal bScore//[B����] [decimal](10, 4) NULL,
    Integer cMax//[C����] [int] NULL,
    Integer cMin//[C����] [int] NULL,
    BigDecimal cScore//[C����] [decimal](10, 4) NULL,
    Integer dMax//[D����] [int] NULL,
    Integer dMin//[D����] [int] NULL,
    BigDecimal dScore//[D����] [decimal](10, 4) NULL,
    Integer eMax//[E����] [int] NULL,
    Integer eMin//[E����] [int] NULL,
    BigDecimal eScore//[E����] [decimal](10, 4) NULL,
    Integer passScore//[ͨ������] [decimal](10, 4) NULL,
    Integer minAgree//[ͬ������] [int] NULL,
    Integer defaultOption//[Ĭ��ѡ��] [int] NULL DEFAULT ((0)),
    static hasMany = [ ballotResult : BallotResult]
    static constraints = {

        groupID(nullable: true)
        times(nullable: true)
        columns(nullable: true)
        aMax(nullable: true)
        aMin(nullable: true)
        aScore(nullable: true,max:new BigDecimal("999999.9999"), scale:4)
        bMax(nullable: true)
        bMin(nullable: true)
        bScore(nullable: true,max:new BigDecimal("999999.9999"), scale:4)
        cMax(nullable: true)
        cMin(nullable: true)
        cScore(nullable: true,max:new BigDecimal("999999.9999"), scale:4)
        dMax(nullable: true)
        dMin(nullable: true)
        dScore(nullable: true,max:new BigDecimal("999999.9999"), scale:4)
        eMax(nullable: true)
        eMin(nullable: true)
        eScore(nullable: true,max:new BigDecimal("999999.9999"), scale:4)
        passScore(nullable: true)
        minAgree(nullable: true)
        defaultOption(nullable: true)
        ballotResult(nullable: true)
    }
}
