package firstgrails
//ѧ���ֵ�
class Division {
    static hasMany = [ turnCandidates : TurnCandidate]
    String divisionID//[����] [nchar](2) NOT NULL,
    String groupID//[С��ID] [int] NOT NULL,
    String divisionName//[����] [nvarchar](25) NOT NULL,
    String groupName//[����] [nvarchar](25) NOT NULL,
    static constraints = {
    }
    static mapping = {
    }
}
