package firstgrails
//选举投票
class BallotContent {
    String electionYear//[增选年度] [nchar](4) NOT NULL,
    Date createTime//[创建时间] [datetime] NOT NULL DEFAULT (getdate()),
    Date modifyTime//[修改时间] [datetime] NOT NULL DEFAULT (getdate()),
    String status//[状态] [nchar](3) NOT NULL DEFAULT (N'已开始'),
    String divisionID//[学部ID] [int] NOT NULL,
    Integer roundID//[轮ID] [int] NOT NULL,
    String groupID//[小组ID] [int] NULL,
    String type//[类型] [nchar](2) NOT NULL,
    Integer times//[次] [int] NOT NULL,
    String way//[方式] [nchar](2) NOT NULL,
    Integer columns//[选票分栏数] [int] NULL,
    Integer aMax//[A上限] [int] NULL,
    Integer aMin//[A下限] [int] NULL,
    BigDecimal aScore//[A分数] [decimal](10, 4) NULL,
    Integer bMax//[B上限] [int] NULL,
    Integer bMin//[B下限] [int] NULL,
    BigDecimal bScore//[B分数] [decimal](10, 4) NULL,
    Integer cMax//[C上限] [int] NULL,
    Integer cMin//[C下限] [int] NULL,
    BigDecimal cScore//[C分数] [decimal](10, 4) NULL,
    Integer dMax//[D上限] [int] NULL,
    Integer dMin//[D下限] [int] NULL,
    BigDecimal dScore//[D分数] [decimal](10, 4) NULL,
    Integer eMax//[E上限] [int] NULL,
    Integer eMin//[E下限] [int] NULL,
    BigDecimal eScore//[E分数] [decimal](10, 4) NULL,
    Integer passScore//[通过分数] [decimal](10, 4) NULL,
    Integer minAgree//[同意至少] [int] NULL,
    Integer defaultOption//[默认选项] [int] NULL DEFAULT ((0)),
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
