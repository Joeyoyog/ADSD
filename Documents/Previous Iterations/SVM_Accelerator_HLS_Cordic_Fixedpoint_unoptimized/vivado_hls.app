<project xmlns="com.autoesl.autopilot.project" name="SVM_Accelerator_HLS_Cordic_Fixedpoint_unoptimized" top="classify">
    <files>
        <file name="../test_data.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../test_data.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../ground_truth.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../AcceleratorTB.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="svs.h" sc="0" tb="false" cflags=""/>
        <file name="bias.h" sc="0" tb="false" cflags=""/>
        <file name="alphas.h" sc="0" tb="false" cflags=""/>
        <file name="Exp.h" sc="0" tb="false" cflags=""/>
        <file name="Exp.cpp" sc="0" tb="false" cflags=""/>
        <file name="Classifier.h" sc="0" tb="false" cflags=""/>
        <file name="Classifier.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

