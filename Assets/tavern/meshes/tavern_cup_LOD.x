xof 0303txt 0032

// DirectX 8.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Thu May 05 10:34:05 2011

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
    108;
    0.267842; 1.170413; 0.267842;,
    0.356591; 1.222337; 0.000000;,
    0.252148; 1.222337; 0.252148;,
    0.325441; 0.845651; 0.000000;,
    0.267842; 1.170413; -0.267842;,
    0.378785; 1.170413; 0.000000;,
    -0.351458; 0.000000; 0.000000;,
    -0.023542; 0.126032; 0.056836;,
    -0.056836; 0.126032; -0.023542;,
    -0.056836; 0.126032; -0.023542;,
    -0.023542; 0.126032; 0.056836;,
    -0.066588; 0.401206; 0.000000;,
    0.000000; 0.512318; -0.118557;,
    -0.064894; 0.623428; 0.000000;,
    -0.045887; 0.623428; -0.045887;,
    -0.101195; 0.512318; 0.041917;,
    -0.045887; 0.623428; 0.045887;,
    -0.064894; 0.623428; 0.000000;,
    -0.230121; 0.845651; 0.230121;,
    -0.325441; 0.845651; 0.000000;,
    -0.066588; 0.401206; 0.000000;,
    -0.101195; 0.512318; 0.041917;,
    0.000000; 0.512318; -0.118557;,
    -0.248518; 0.000000; -0.248518;,
    -0.267842; 1.170413; 0.267842;,
    -0.378785; 1.170413; 0.000000;,
    -0.378785; 1.170413; 0.000000;,
    -0.252148; 1.222337; 0.252148;,
    -0.356591; 1.222337; 0.000000;,
    -0.045887; 0.623428; -0.045887;,
    -0.325441; 0.845651; 0.000000;,
    -0.230121; 0.845651; -0.230121;,
    0.000000; 1.170413; -0.378785;,
    -0.252148; 1.222337; -0.252148;,
    0.000000; 1.222337; -0.356591;,
    0.055391; 0.623428; -0.022944;,
    0.230121; 0.845651; -0.230121;,
    0.378785; 1.170413; 0.000000;,
    0.252148; 1.222337; -0.252148;,
    -0.248518; 0.000000; 0.248518;,
    0.000000; 0.000000; 0.351458;,
    0.023542; 0.401206; 0.056836;,
    0.041917; 0.512318; 0.101195;,
    0.000000; 0.623428; 0.064894;,
    -0.045887; 0.623428; 0.045887;,
    0.000000; 0.845651; 0.325441;,
    -0.230121; 0.845651; 0.230121;,
    0.000000; 0.845651; -0.325441;,
    -0.267842; 1.170413; -0.267842;,
    0.000000; 1.170413; -0.378785;,
    0.000000; 0.623428; -0.064894;,
    -0.230121; 0.845651; -0.230121;,
    0.000000; 1.170413; 0.378785;,
    -0.267842; 1.170413; 0.267842;,
    -0.267842; 1.170413; 0.267842;,
    0.000000; 1.222337; 0.356591;,
    0.000000; 0.623428; -0.064894;,
    -0.267842; 1.170413; -0.267842;,
    0.248518; 0.000000; -0.248518;,
    0.000000; 0.126032; -0.066588;,
    0.066588; 0.126032; 0.000000;,
    0.351458; 0.000000; 0.000000;,
    0.066588; 0.126032; 0.000000;,
    0.000000; 0.401206; -0.066588;,
    0.041917; 0.512318; 0.101195;,
    0.045887; 0.623428; 0.045887;,
    0.000000; 0.623428; 0.064894;,
    0.230121; 0.845651; 0.230121;,
    0.000000; 0.845651; 0.325441;,
    0.000000; 0.126032; -0.066588;,
    0.000000; 0.401206; -0.066588;,
    0.000000; 0.000000; -0.351458;,
    0.000000; 0.126032; -0.066588;,
    0.267842; 1.170413; 0.267842;,
    0.000000; 1.170413; 0.378785;,
    0.000000; 1.170413; 0.378785;,
    -0.378785; 1.170413; 0.000000;,
    -0.267842; 1.170413; -0.267842;,
    0.267842; 1.170413; -0.267842;,
    0.000000; 1.222337; -0.356591;,
    0.000000; 0.126032; -0.066588;,
    0.000000; 0.401206; -0.066588;,
    0.000000; 0.512318; -0.118557;,
    0.000000; 0.623428; -0.064894;,
    0.055391; 0.623428; -0.022944;,
    0.248518; 0.000000; 0.248518;,
    0.023542; 0.401206; 0.056836;,
    0.000000; 0.512318; -0.118557;,
    0.045887; 0.623428; 0.045887;,
    0.325441; 0.845651; 0.000000;,
    0.230121; 0.845651; 0.230121;,
    0.230121; 0.845651; -0.230121;,
    0.000000; 1.170413; -0.378785;,
    0.267842; 1.170413; -0.267842;,
    0.055391; 0.623428; -0.022944;,
    0.000000; 0.845651; -0.325441;,
    0.378785; 1.170413; 0.000000;,
    0.267842; 1.170413; 0.267842;,
    -0.045887; 0.623428; 0.045887;,
    -0.064894; 0.623428; 0.000000;,
    0.000000; 0.623428; 0.064894;,
    -0.045887; 0.623428; -0.045887;,
    0.000000; 0.000000; -0.351458;,
    0.045887; 0.623428; 0.045887;,
    0.000000; 1.170413; -0.378785;,
    0.000000; 0.401206; -0.066588;,
    0.055391; 0.623428; -0.022944;,
    0.000000; 0.623428; -0.064894;;
    82;
    3;0, 1, 2;,
    3;3, 4, 5;,
    3;6, 7, 8;,
    3;9, 10, 11;,
    3;12, 13, 14;,
    3;15, 16, 13;,
    3;17, 18, 19;,
    3;20, 21, 22;,
    3;23, 6, 8;,
    3;19, 24, 25;,
    3;26, 27, 28;,
    3;29, 30, 31;,
    3;32, 33, 34;,
    3;35, 36, 3;,
    3;37, 38, 1;,
    3;39, 40, 7;,
    3;10, 41, 11;,
    3;20, 42, 21;,
    3;15, 43, 16;,
    3;44, 45, 46;,
    3;47, 48, 49;,
    3;50, 51, 47;,
    3;46, 52, 53;,
    3;54, 55, 27;,
    3;12, 14, 56;,
    3;57, 28, 33;,
    3;58, 59, 60;,
    3;61, 58, 60;,
    3;40, 60, 7;,
    3;10, 62, 41;,
    3;63, 20, 22;,
    3;64, 65, 43;,
    3;66, 67, 68;,
    3;69, 11, 70;,
    3;71, 8, 72;,
    3;68, 73, 74;,
    3;75, 2, 55;,
    3;31, 76, 77;,
    3;78, 79, 38;,
    3;62, 80, 81;,
    3;82, 83, 84;,
    3;85, 61, 60;,
    3;62, 81, 41;,
    3;86, 87, 42;,
    3;64, 84, 65;,
    3;88, 89, 90;,
    3;91, 92, 93;,
    3;94, 95, 91;,
    3;90, 96, 97;,
    3;37, 1, 0;,
    3;36, 4, 3;,
    3;39, 7, 6;,
    3;15, 13, 12;,
    3;98, 18, 17;,
    3;18, 24, 19;,
    3;54, 27, 26;,
    3;99, 30, 29;,
    3;57, 33, 32;,
    3;78, 38, 37;,
    3;86, 42, 20;,
    3;64, 43, 15;,
    3;100, 45, 44;,
    3;51, 48, 47;,
    3;101, 51, 50;,
    3;45, 52, 46;,
    3;75, 55, 54;,
    3;26, 28, 57;,
    3;102, 59, 58;,
    3;85, 60, 40;,
    3;103, 67, 66;,
    3;9, 11, 69;,
    3;23, 8, 71;,
    3;67, 73, 68;,
    3;0, 2, 75;,
    3;30, 76, 31;,
    3;104, 79, 78;,
    3;105, 87, 86;,
    3;82, 84, 64;,
    3;106, 89, 88;,
    3;95, 92, 91;,
    3;107, 95, 94;,
    3;89, 96, 90;;

   MeshTextureCoords {
    108;
    0.808651; 0.616411;,
    0.941356; 0.737128;,
    0.941356; 0.616411;,
    0.145712; 0.617559;,
    0.753797; 0.259444;,
    0.099650; 0.259444;,
    0.326352; 0.324356;,
    0.827854; 0.471400;,
    0.827854; 0.275341;,
    0.341618; 0.298865;,
    0.341618; 0.408744;,
    0.821209; 0.326334;,
    0.817808; 0.350627;,
    0.931981; 0.428381;,
    0.931981; 0.389504;,
    0.817808; 0.447819;,
    0.931981; 0.467258;,
    0.389754; 0.944271;,
    0.715829; 0.616982;,
    0.172101; 0.616982;,
    0.940553; 0.642889;,
    0.809236; 0.622269;,
    0.809236; 0.725372;,
    0.326352; 0.226327;,
    0.760392; 0.270525;,
    0.127538; 0.270525;,
    0.808651; 0.254259;,
    0.941356; 0.374976;,
    0.941356; 0.254259;,
    0.399143; 0.921079;,
    0.694669; 0.624453;,
    0.201882; 0.624453;,
    0.808651; 0.012824;,
    0.941356; 0.133542;,
    0.941356; 0.012824;,
    0.426723; 0.955860;,
    0.707735; 0.617559;,
    0.808651; 0.737128;,
    0.941356; 0.857845;,
    0.326352; 0.422385;,
    0.326352; 0.520414;,
    0.821209; 0.463683;,
    0.809236; 0.539786;,
    0.931981; 0.506134;,
    0.426089; 0.964774;,
    0.741027; 0.648663;,
    0.215869; 0.648663;,
    0.141777; 0.636378;,
    0.777032; 0.262263;,
    0.093656; 0.262263;,
    0.376806; 0.989795;,
    0.728912; 0.636378;,
    0.784068; 0.314039;,
    0.172828; 0.314039;,
    0.808651; 0.374976;,
    0.941356; 0.495694;,
    0.931981; 0.350627;,
    0.808651; 0.133542;,
    0.326352; 0.814502;,
    0.827854; 0.912531;,
    0.827854; 0.716473;,
    0.326352; 0.716473;,
    0.341618; 0.546092;,
    0.940553; 0.725372;,
    0.817808; 0.525573;,
    0.931981; 0.545011;,
    0.387894; 0.986281;,
    0.725160; 0.647759;,
    0.162770; 0.647759;,
    0.341618; 0.216456;,
    0.821209; 0.216456;,
    0.326352; 0.128298;,
    0.827854; 0.128298;,
    0.771252; 0.289411;,
    0.116678; 0.289411;,
    0.808651; 0.495694;,
    0.735057; 0.310456;,
    0.161494; 0.310456;,
    0.808651; 0.857845;,
    0.941356; 0.978563;,
    0.341618; 0.655971;,
    0.821209; 0.655971;,
    0.817808; 0.661642;,
    0.931981; 0.661642;,
    0.931981; 0.603326;,
    0.326352; 0.618444;,
    0.940553; 0.539786;,
    0.809236; 0.395441;,
    0.416713; 0.938160;,
    0.736191; 0.617494;,
    0.203464; 0.617494;,
    0.157632; 0.619147;,
    0.777232; 0.254251;,
    0.110698; 0.254251;,
    0.386869; 0.963854;,
    0.730298; 0.619147;,
    0.779852; 0.278047;,
    0.159803; 0.278047;,
    0.498176; 0.944271;,
    0.497407; 0.921079;,
    0.530807; 0.964774;,
    0.493883; 0.989795;,
    0.326352; 0.912531;,
    0.500036; 0.986281;,
    0.808651; 0.978563;,
    0.940553; 0.395441;,
    0.522941; 0.938160;,
    0.501061; 0.963854;;
   }

   FVFData {
    258;
    216;
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
    82;
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
      "C:\\test\\metal_lamp.tga";
     }
    }

   }
  }
}
