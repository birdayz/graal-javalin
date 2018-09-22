package de.nerden.samples.graal;

import org.eclipse.jetty.servlet.ServletMapping;
import org.graalvm.nativeimage.Feature;
import org.graalvm.nativeimage.RuntimeReflection;
import org.slf4j.impl.StaticLoggerBinder;

public class GraalVMCompat implements Feature {

    public void beforeAnalysis(BeforeAnalysisAccess access) {
        RuntimeReflection.register(ServletMapping[].class);
        RuntimeReflection.register(StaticLoggerBinder.class);
    }
}
