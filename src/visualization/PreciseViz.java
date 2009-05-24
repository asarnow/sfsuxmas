package visualization;

import com.sfsu.xmas.data_sets.ExpressionDataSet;
import com.sfsu.xmas.data_structures.Probes;
import com.sfsu.xmas.monitoring.ExecutionTimer;
import com.sfsu.xmas.trajectory_files.TrajectoryFile;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;

public class PreciseViz extends AbstractPreciseViz {

    public PreciseViz(String identifier, ExpressionDataSet expressionDatabase, TrajectoryFile trajFile) {
        super(identifier, expressionDatabase, trajFile);
    }
    
    public BufferedImage generateGraph() throws IOException {
        ExecutionTimer et = new ExecutionTimer();
        et.start();
        initialize();

        Probes probes = getProbesToRender();
        
        // Create image
        BufferedImage image = new BufferedImage(mWidth, mHeight, BufferedImage.TYPE_INT_RGB);
        Graphics2D g2d = getVizCanvas(image);

        imgMap.write("<Map name=\"Visualization_map\">\n");
        if (probes.size() > 0) {
            renderProbes(g2d, probes, null);
        }
        imgMap.write("</Map>");
        imgMap.close();
        et.end();
        System.out.println("DURATION = " + et.duration() + " in class " + PreciseViz.class.getName());
        return image;
    }
}
