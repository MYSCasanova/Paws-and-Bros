
package listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Date;

public class AppContextListener implements ServletContextListener
{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        sce.getServletContext().setAttribute("currentDate", new Date());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
    
}
