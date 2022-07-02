package ConnTools;
import java.sql.SQLException;
import java.util.List;
public abstract class SearchSort implements Project
{
	public <T> List<Usr> search(T ele) throws SQLException,NumberFormatException
	{return null;}
	public List<Usr> searchbyphno(String str) throws SQLException
	{return null;}
	public List<Usr> searchbyfname(String str) throws SQLException
	{return null;}
	public <T> List<Sl> searchall() throws SQLException,NumberFormatException
	{return null;}
}