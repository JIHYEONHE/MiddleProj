package reply;

import java.util.List;

public interface ReplyDAO {
	
	public int replyInsert(ReplyVO vo);

	public List<ReplyVO> getReplyList(int infoboNum);
	
	public int deleteReply(ReplyVO vo);
}
