package firstgrails
//学部字典
class Division {
    static hasMany = [ turnCandidates : TurnCandidate]
    String divisionID//[编码] [nchar](2) NOT NULL,
    String groupID//[小组ID] [int] NOT NULL,
    String divisionName//[名称] [nvarchar](25) NOT NULL,
    String groupName//[名称] [nvarchar](25) NOT NULL,
    static constraints = {
    }
    static mapping = {
    }
}
