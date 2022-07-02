package ConnTools;
import java.sql.SQLException;
import java.util.List;
public interface Project {
	public <T> List<Usr> search(T ele) throws SQLException,NumberFormatException;
	public List<Usr> searchbyphno(String str) throws SQLException;
	public List<Usr> searchbyfname(String str) throws SQLException;
	public <T> List<Sl> searchall() throws SQLException,NumberFormatException;
}