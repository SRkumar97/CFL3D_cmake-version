# CMake generated Testfile for 
# Source directory: /home/ramkumar/CFL3D
# Build directory: /home/ramkumar/CFL3D/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(2D_SEQ_FLATPLATE "sh" "-c" "/home/ramkumar/CFL3D/build/bin/splitter<split.inp_1blk && /home/ramkumar/CFL3D/build/bin/cfl3d_seq<grdflat5.inp")
SET_TESTS_PROPERTIES(2D_SEQ_FLATPLATE PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/Flatplate")
ADD_TEST(2D_RONNIE_BACKSTEP "sh" "-c" "/home/ramkumar/CFL3D/build/bin/splitter < split.inp_1blk && /home/ramkumar/CFL3D/build/bin/ronnie < ron_step_grdgen.inp && /home/ramkumar/CFL3D/build/bin/cfl3d_seq < step_grdgen.inp")
SET_TESTS_PROPERTIES(2D_RONNIE_BACKSTEP PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/Backstep")
ADD_TEST(2D_MAGGIE_NACA4412 "sh" "-c" "/home/ramkumar/CFL3D/build/bin/splitter < split.inp_xmera && /home/ramkumar/CFL3D/build/bin/maggie < maggie.inp && /home/ramkumar/CFL3D/build/bin/cfl3d_seq < cfl3d.inp_xmera")
SET_TESTS_PROPERTIES(2D_MAGGIE_NACA4412 PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/NACA_4412")
ADD_TEST(2.5D_MPI_AXIBUMP "sh" "-c" "/home/ramkumar/CFL3D/build/bin/splitter < split.inp_3blk  && /usr/lib64/openmpi/bin/mpiexec -np 4  /home/ramkumar/CFL3D/build/bin/cfl3d_mpi  < bumpperiodic.inp_3blk")
SET_TESTS_PROPERTIES(2.5D_MPI_AXIBUMP PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/Axibump")
ADD_TEST(3D_SEQ_DELTA_PLOT3D_TO_CGNS "sh" "-c" "/home/ramkumar/CFL3D/build/bin/plot3dg_to_cgns < plot3dg_to_cgns.inp")
SET_TESTS_PROPERTIES(3D_SEQ_DELTA_PLOT3D_TO_CGNS PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/Delta_cgns")
ADD_TEST(3D_SEQ_DELTA_CGNS_RUN "sh" "-c" "/home/ramkumar/CFL3D/build/bin/cfl3d_seq < delta_cgns.inp")
SET_TESTS_PROPERTIES(3D_SEQ_DELTA_CGNS_RUN PROPERTIES  WORKING_DIRECTORY "/home/ramkumar/CFL3D/testcase/Delta_cgns")
SUBDIRS(source)
