xof 0303txt 0032

// DirectX 8.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Thu May 05 10:34:26 2011

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 4800;
}

// Start of Frames

Frame Default_Layer {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh Default_Layer {
    176;
    0.113672; 0.153986; 0.047084;,
    0.202391; 0.376209; 0.083833;,
    -0.047084; 0.153986; 0.113672;,
    0.000000; 0.376209; -0.237115;,
    0.091775; 0.598430; -0.091775;,
    0.202391; 0.376209; 0.083833;,
    -0.702915; -0.304130; 0.000000;,
    -0.094169; -0.081908; 0.094169;,
    -0.133175; -0.081908; 0.000000;,
    -0.133175; -0.081908; 0.000000;,
    -0.047084; 0.153986; 0.113672;,
    -0.133175; 0.153986; 0.000000;,
    -0.133175; 0.153986; 0.000000;,
    -0.083833; 0.376209; 0.202391;,
    -0.202391; 0.376209; -0.083833;,
    -0.202391; 0.376209; -0.083833;,
    -0.091775; 0.598430; 0.091775;,
    -0.129789; 0.598430; 0.000000;,
    -0.129789; 0.598430; 0.000000;,
    -0.460243; 0.915455; 0.460243;,
    -0.650882; 0.915455; 0.000000;,
    -0.702915; -0.304130; 0.000000;,
    -0.702915; -0.474244; 0.000000;,
    -0.497036; -0.304130; 0.497036;,
    -0.535684; 1.318883; 0.535684;,
    -0.757571; 1.318883; 0.000000;,
    -0.497036; -0.474244; 0.497036;,
    0.000000; -0.304130; 0.702915;,
    -0.757571; 1.318883; 0.000000;,
    -0.535684; 1.422730; 0.535684;,
    -0.757571; 1.422730; 0.000000;,
    -0.757571; 1.422730; 0.000000;,
    -0.472910; 1.422730; 0.472910;,
    -0.668795; 1.422730; 0.000000;,
    0.094169; 0.153986; -0.094169;,
    0.000000; 0.376209; -0.237115;,
    0.460243; 0.915455; -0.460243;,
    0.535684; 1.318883; -0.535684;,
    0.650882; 0.915455; 0.000000;,
    0.129789; 0.598430; 0.000000;,
    0.650882; 0.915455; 0.000000;,
    0.091775; 0.598430; 0.091775;,
    -0.497036; -0.304130; 0.497036;,
    0.000000; -0.081908; 0.133175;,
    0.000000; -0.474244; 0.702915;,
    0.497036; -0.304130; 0.497036;,
    0.497036; -0.474244; 0.497036;,
    0.702915; -0.304130; 0.000000;,
    -0.083833; 0.376209; 0.202391;,
    0.000000; 0.598430; 0.129789;,
    -0.091775; 0.598430; 0.091775;,
    0.000000; 0.915455; 0.650882;,
    -0.460243; 0.915455; 0.460243;,
    0.702915; -0.474244; 0.000000;,
    0.497036; -0.304130; -0.497036;,
    0.000000; 1.318883; 0.757571;,
    -0.535684; 1.318883; 0.535684;,
    0.497036; -0.474244; -0.497036;,
    0.000000; -0.304130; -0.702915;,
    -0.535684; 1.318883; 0.535684;,
    0.000000; 1.422730; 0.757571;,
    -0.535684; 1.422730; 0.535684;,
    0.000000; 1.422730; 0.668795;,
    -0.472910; 1.422730; 0.472910;,
    0.094169; -0.081908; -0.094169;,
    0.094169; 0.153986; -0.094169;,
    0.133175; -0.081908; 0.000000;,
    0.757571; 1.318883; 0.000000;,
    0.460243; 0.915455; 0.460243;,
    -0.535684; 1.318883; -0.535684;,
    0.000000; -0.304130; 0.702915;,
    0.094169; -0.081908; 0.094169;,
    0.000000; -0.081908; 0.133175;,
    0.113672; 0.153986; 0.047084;,
    0.091775; 0.598430; 0.091775;,
    0.000000; 0.598430; 0.129789;,
    0.460243; 0.915455; 0.460243;,
    0.000000; 0.915455; 0.650882;,
    0.000000; -0.304130; -0.702915;,
    0.000000; -0.474244; -0.702915;,
    -0.497036; -0.304130; -0.497036;,
    0.535684; 1.318883; 0.535684;,
    0.000000; 1.318883; 0.757571;,
    -0.497036; -0.474244; -0.497036;,
    0.000000; 1.318883; 0.757571;,
    0.535684; 1.422730; 0.535684;,
    0.000000; 1.422730; 0.757571;,
    0.472910; 1.422730; 0.472910;,
    0.000000; 1.422730; 0.668795;,
    0.091775; 0.598430; 0.091775;,
    0.497036; -0.304130; -0.497036;,
    0.094169; -0.081908; -0.094169;,
    0.702915; -0.304130; 0.000000;,
    0.497036; -0.304130; 0.497036;,
    0.133175; -0.081908; 0.000000;,
    -0.094169; 0.153986; -0.094169;,
    -0.094169; -0.081908; -0.094169;,
    0.129789; 0.598430; 0.000000;,
    -0.497036; -0.304130; -0.497036;,
    0.535684; 1.318883; 0.535684;,
    -0.129789; 0.598430; 0.000000;,
    -0.650882; 0.915455; 0.000000;,
    -0.091775; 0.598430; -0.091775;,
    0.535684; 1.318883; 0.535684;,
    0.757571; 1.422730; 0.000000;,
    0.535684; 1.422730; 0.535684;,
    0.668795; 1.422730; 0.000000;,
    0.472910; 1.422730; 0.472910;,
    0.535684; 1.422730; 0.535684;,
    0.757571; 1.422730; 0.000000;,
    0.757571; 1.318883; 0.000000;,
    0.129789; 0.598430; 0.000000;,
    -0.535684; 1.422730; -0.535684;,
    -0.472910; 1.422730; -0.472910;,
    0.000000; 1.422730; -0.757571;,
    0.757571; 1.318883; 0.000000;,
    -0.535684; 1.422730; -0.535684;,
    0.000000; 1.318883; -0.757571;,
    0.535684; 1.422730; -0.535684;,
    0.757571; 1.422730; 0.000000;,
    0.472910; 1.422730; -0.472910;,
    0.668795; 1.422730; 0.000000;,
    -0.535684; 1.422730; -0.535684;,
    -0.668795; 1.422730; 0.000000;,
    -0.472910; 1.422730; -0.472910;,
    0.000000; -0.081908; -0.133175;,
    0.000000; 0.153986; -0.133175;,
    -0.460243; 0.915455; -0.460243;,
    -0.535684; 1.318883; -0.535684;,
    0.000000; 0.915455; -0.650882;,
    0.000000; 0.598430; -0.129789;,
    0.091775; 0.598430; -0.091775;,
    0.000000; 0.915455; -0.650882;,
    0.460243; 0.915455; -0.460243;,
    -0.091775; 0.598430; -0.091775;,
    0.000000; 0.598430; -0.129789;,
    0.000000; 1.318883; -0.757571;,
    0.535684; 1.318883; -0.535684;,
    -0.091775; 0.598430; -0.091775;,
    0.000000; 0.376209; -0.237115;,
    0.535684; 1.318883; -0.535684;,
    0.000000; 1.422730; -0.757571;,
    0.535684; 1.422730; -0.535684;,
    0.000000; 1.422730; -0.668795;,
    0.472910; 1.422730; -0.472910;,
    0.000000; 0.153986; -0.133175;,
    -0.460243; 0.915455; -0.460243;,
    -0.757571; 1.318883; 0.000000;,
    -0.535684; 1.318883; -0.535684;,
    0.000000; -0.304130; -0.702915;,
    -0.094169; -0.081908; -0.094169;,
    0.000000; -0.081908; -0.133175;,
    0.000000; -0.081908; -0.133175;,
    -0.094169; 0.153986; -0.094169;,
    0.000000; 0.153986; -0.133175;,
    0.000000; 0.376209; -0.237115;,
    0.000000; 0.598430; -0.129789;,
    0.000000; 1.318883; -0.757571;,
    0.000000; 1.422730; -0.757571;,
    0.000000; 1.422730; -0.668795;,
    0.535684; 1.422730; -0.535684;,
    0.000000; 1.422730; -0.757571;,
    0.000000; -0.474244; -0.702915;,
    0.094169; -0.081908; 0.094169;,
    -0.757571; 1.422730; 0.000000;,
    0.000000; 1.422730; 0.757571;,
    0.091775; 0.598430; -0.091775;,
    -0.094169; -0.081908; 0.094169;,
    -0.091775; 0.598430; 0.091775;,
    0.000000; 1.318883; -0.757571;,
    -0.535684; 1.422730; 0.535684;,
    0.000000; 0.598430; -0.129789;,
    0.000000; 0.153986; -0.133175;,
    0.000000; 0.598430; 0.129789;,
    0.000000; -0.081908; -0.133175;,
    0.000000; -0.304130; -0.702915;;
    132;
    3;0, 1, 2;,
    3;3, 4, 5;,
    3;6, 7, 8;,
    3;9, 10, 11;,
    3;12, 13, 14;,
    3;15, 16, 17;,
    3;18, 19, 20;,
    3;21, 22, 23;,
    3;20, 24, 25;,
    3;23, 26, 27;,
    3;28, 29, 30;,
    3;31, 32, 33;,
    3;34, 35, 0;,
    3;36, 37, 38;,
    3;39, 40, 41;,
    3;42, 43, 7;,
    3;27, 44, 45;,
    3;45, 46, 47;,
    3;48, 49, 16;,
    3;50, 51, 52;,
    3;47, 53, 54;,
    3;52, 55, 56;,
    3;54, 57, 58;,
    3;59, 60, 29;,
    3;61, 62, 63;,
    3;64, 65, 66;,
    3;40, 67, 68;,
    3;28, 30, 69;,
    3;70, 71, 43;,
    3;72, 73, 10;,
    3;2, 1, 13;,
    3;48, 74, 49;,
    3;75, 76, 77;,
    3;78, 79, 80;,
    3;77, 81, 82;,
    3;80, 83, 21;,
    3;84, 85, 60;,
    3;86, 87, 88;,
    3;89, 76, 75;,
    3;5, 74, 48;,
    3;90, 91, 92;,
    3;93, 94, 71;,
    3;12, 14, 95;,
    3;9, 11, 96;,
    3;5, 97, 74;,
    3;41, 40, 68;,
    3;6, 8, 98;,
    3;68, 67, 99;,
    3;100, 101, 102;,
    3;103, 104, 85;,
    3;105, 106, 107;,
    3;108, 87, 86;,
    3;109, 106, 105;,
    3;110, 104, 103;,
    3;92, 91, 94;,
    3;66, 65, 73;,
    3;0, 35, 1;,
    3;5, 4, 97;,
    3;111, 36, 38;,
    3;112, 113, 114;,
    3;38, 37, 115;,
    3;69, 116, 117;,
    3;110, 118, 104;,
    3;119, 120, 121;,
    3;103, 85, 84;,
    3;122, 123, 124;,
    3;69, 30, 116;,
    3;90, 125, 91;,
    3;64, 126, 65;,
    3;127, 128, 129;,
    3;3, 130, 4;,
    3;131, 132, 133;,
    3;134, 127, 135;,
    3;133, 136, 137;,
    3;15, 138, 139;,
    3;140, 141, 118;,
    3;142, 143, 144;,
    3;140, 118, 110;,
    3;95, 14, 145;,
    3;146, 147, 148;,
    3;149, 150, 151;,
    3;152, 153, 154;,
    3;145, 14, 155;,
    3;139, 138, 156;,
    3;135, 127, 129;,
    3;96, 153, 152;,
    3;129, 128, 157;,
    3;98, 150, 149;,
    3;117, 116, 158;,
    3;114, 113, 159;,
    3;160, 120, 119;,
    3;101, 147, 146;,
    3;102, 101, 146;,
    3;98, 8, 150;,
    3;96, 11, 153;,
    3;161, 143, 142;,
    3;15, 17, 138;,
    3;21, 83, 22;,
    3;80, 79, 83;,
    3;58, 57, 162;,
    3;54, 53, 57;,
    3;47, 46, 53;,
    3;45, 44, 46;,
    3;27, 26, 44;,
    3;23, 22, 26;,
    3;163, 73, 72;,
    3;93, 71, 70;,
    3;76, 81, 77;,
    3;164, 123, 122;,
    3;165, 62, 61;,
    3;166, 36, 111;,
    3;42, 7, 6;,
    3;167, 10, 9;,
    3;2, 13, 12;,
    3;48, 16, 15;,
    3;168, 19, 18;,
    3;169, 141, 140;,
    3;19, 24, 20;,
    3;132, 136, 133;,
    3;59, 29, 28;,
    3;170, 32, 31;,
    3;66, 73, 163;,
    3;92, 94, 93;,
    3;70, 43, 42;,
    3;72, 10, 167;,
    3;171, 132, 131;,
    3;172, 35, 34;,
    3;173, 51, 50;,
    3;174, 126, 64;,
    3;51, 55, 52;,
    3;175, 125, 90;,
    3;84, 60, 59;;

   MeshTextureCoords {
    176;
    0.838772; 0.485362;,
    0.707454; 0.485362;,
    0.838772; 0.567845;,
    0.716026; 0.648459;,
    0.830199; 0.609582;,
    0.716026; 0.551267;,
    0.326352; 0.324356;,
    0.827854; 0.422385;,
    0.827854; 0.324356;,
    0.341618; 0.326334;,
    0.821209; 0.408744;,
    0.821209; 0.326334;,
    0.838772; 0.629707;,
    0.707454; 0.567845;,
    0.707454; 0.650327;,
    0.716026; 0.395760;,
    0.830199; 0.454075;,
    0.830199; 0.415198;,
    0.389754; 0.944271;,
    0.715829; 0.616982;,
    0.172101; 0.616982;,
    0.949987; 0.031881;,
    0.812510; 0.031881;,
    0.949987; 0.267530;,
    0.760392; 0.270525;,
    0.127538; 0.270525;,
    0.812510; 0.267530;,
    0.949987; 0.503179;,
    0.808651; -0.036085;,
    0.941356; 0.229805;,
    0.941356; -0.036085;,
    0.837739; 0.154461;,
    0.706519; 0.835226;,
    0.709172; 0.259973;,
    0.838772; 0.423500;,
    0.707454; 0.382258;,
    0.707735; 0.617559;,
    0.753797; 0.259444;,
    0.145712; 0.617559;,
    0.522941; 0.938160;,
    0.736191; 0.617494;,
    0.416713; 0.938160;,
    0.326352; 0.422385;,
    0.827854; 0.520414;,
    0.812511; 0.503179;,
    0.949987; 0.738828;,
    0.812511; 0.738828;,
    0.949987; 0.974477;,
    0.716026; 0.473513;,
    0.830199; 0.492952;,
    0.426089; 0.964774;,
    0.741027; 0.648663;,
    0.215869; 0.648663;,
    0.812511; 0.974477;,
    0.949987; 1.210126;,
    0.784068; 0.314039;,
    0.172828; 0.314039;,
    0.812511; 1.210126;,
    0.949987; 1.445776;,
    0.808651; 0.229805;,
    0.941356; 0.495694;,
    0.834939; 0.177775;,
    0.712181; 0.791455;,
    0.707643; 0.240767;,
    0.341618; 0.601032;,
    0.821209; 0.601032;,
    0.341618; 0.546092;,
    0.779852; 0.278047;,
    0.203464; 0.617494;,
    0.808651; -0.301973;,
    0.326352; 0.520414;,
    0.827854; 0.618444;,
    0.341618; 0.436213;,
    0.821209; 0.518623;,
    0.830199; 0.531829;,
    0.387894; 0.986281;,
    0.725160; 0.647759;,
    0.162770; 0.647759;,
    0.949987; -0.439417;,
    0.812510; -0.439417;,
    0.949987; -0.203768;,
    0.771252; 0.289411;,
    0.116678; 0.289411;,
    0.812510; -0.203768;,
    0.808651; 0.495694;,
    0.941356; 0.761583;,
    0.837799; 0.805898;,
    0.705364; 0.245104;,
    0.709901; 0.795792;,
    0.500036; 0.986281;,
    0.326352; 0.814502;,
    0.827854; 0.814502;,
    0.326352; 0.716473;,
    0.326352; 0.618444;,
    0.827854; 0.716473;,
    0.838772; 0.670948;,
    0.341618; 0.271395;,
    0.830199; 0.570705;,
    0.326352; 0.226327;,
    0.159803; 0.278047;,
    0.497407; 0.921079;,
    0.694669; 0.624453;,
    0.399143; 0.921079;,
    0.808651; 0.761583;,
    0.941356; 1.027471;,
    0.829112; 0.810687;,
    0.703551; 0.264587;,
    0.700897; 0.839840;,
    0.832660; 0.182112;,
    0.832117; 0.159075;,
    0.808651; 1.027471;,
    0.370689; 0.955860;,
    0.836512; 0.177899;,
    0.709216; 0.240891;,
    0.841652; 0.801686;,
    0.099650; 0.259444;,
    0.941356; -0.301973;,
    0.808651; -0.567862;,
    0.941356; 1.293360;,
    0.832766; 0.159865;,
    0.701546; 0.840630;,
    0.704200; 0.265377;,
    0.835383; 0.806864;,
    0.709821; 0.260764;,
    0.707168; 0.836017;,
    0.827854; 0.912531;,
    0.821209; 0.655971;,
    0.728912; 0.636378;,
    0.777032; 0.262263;,
    0.141777; 0.636378;,
    0.830199; 0.648459;,
    0.386869; 0.963854;,
    0.730298; 0.619147;,
    0.157632; 0.619147;,
    0.493883; 0.989795;,
    0.376806; 0.989795;,
    0.777232; 0.254251;,
    0.110698; 0.254251;,
    0.830199; 0.376321;,
    0.716026; 0.337445;,
    0.808651; 1.293360;,
    0.941356; 1.559249;,
    0.834233; 0.182236;,
    0.711474; 0.795916;,
    0.706937; 0.245228;,
    0.838772; 0.712189;,
    0.201882; 0.624453;,
    0.735057; 0.310456;,
    0.161494; 0.310456;,
    0.326352; 0.128298;,
    0.827854; 0.226327;,
    0.827854; 0.128298;,
    0.341618; 0.216456;,
    0.821209; 0.271395;,
    0.821209; 0.216456;,
    0.707454; 0.712189;,
    0.830199; 0.337445;,
    0.093656; 0.262263;,
    0.941356; -0.567862;,
    0.713754; 0.791579;,
    0.829761; 0.811477;,
    0.839372; 0.806023;,
    0.812511; 1.445776;,
    0.341618; 0.491153;,
    0.838388; 0.155252;,
    0.840079; 0.801561;,
    0.482758; 0.955860;,
    0.341618; 0.381274;,
    0.498176; 0.944271;,
    0.808651; 1.559249;,
    0.834734; 0.806073;,
    0.501061; 0.963854;,
    0.838772; 0.382258;,
    0.530807; 0.964774;,
    0.341618; 0.655971;,
    0.326352; 0.912531;;
   }

   FVFData {
    258;
    352;
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216;
   }

   MeshMaterialList {
    1;
    132;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;

    Material metal_lamp {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.000000; 0.000000; 0.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "C:\\test\\metal_cup.tga";
     }
    }

   }
  }
}
