xof 0303txt 0032

// DirectX 8.0 file
// Creator: Ultimate Unwrap3D Pro v3.27
// Website: http://www.unwrap3d.com
// Time: Thu May 05 10:27:47 2011

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

Frame painting4_Layer1 {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh painting4_Layer1 {
    24;
    2.196408; -2.466450; 0.055000;,
    -2.196408; 2.466450; 0.055000;,
    -2.196408; -2.466450; 0.055000;,
    2.196408; 2.466450; 0.055000;,
    -2.196408; -2.466450; 0.055000;,
    2.196408; -2.466450; -0.055000;,
    2.196408; -2.466450; 0.055000;,
    -2.196408; -2.466450; -0.055000;,
    2.196408; -2.466450; 0.055000;,
    2.196408; 2.466450; -0.055000;,
    2.196408; 2.466450; 0.055000;,
    2.196408; -2.466450; -0.055000;,
    2.196408; 2.466450; 0.055000;,
    -2.196408; 2.466450; -0.055000;,
    -2.196408; 2.466450; 0.055000;,
    2.196408; 2.466450; -0.055000;,
    -2.196408; 2.466450; 0.055000;,
    -2.196408; -2.466450; -0.055000;,
    -2.196408; -2.466450; 0.055000;,
    -2.196408; 2.466450; -0.055000;,
    -2.196408; 2.466450; -0.055000;,
    2.196408; -2.466450; -0.055000;,
    -2.196408; -2.466450; -0.055000;,
    2.196408; 2.466450; -0.055000;;
    12;
    3;0, 1, 2;,
    3;1, 0, 3;,
    3;4, 5, 6;,
    3;5, 4, 7;,
    3;8, 9, 10;,
    3;9, 8, 11;,
    3;12, 13, 14;,
    3;13, 12, 15;,
    3;16, 17, 18;,
    3;17, 16, 19;,
    3;20, 21, 22;,
    3;21, 20, 23;;

   MeshTextureCoords {
    24;
    0.220174; 0.491502;,
    0.005006; 0.006611;,
    0.005006; 0.491502;,
    0.220174; 0.006611;,
    0.006850; 0.010283;,
    0.218532; 0.025412;,
    0.218532; 0.010283;,
    0.006850; 0.025412;,
    0.013920; 0.495174;,
    0.004946; 0.004476;,
    0.013920; 0.004476;,
    0.004946; 0.495174;,
    0.218532; 0.010283;,
    0.006850; 0.025412;,
    0.006850; 0.010283;,
    0.218532; 0.025412;,
    0.013920; 0.004476;,
    0.004946; 0.495174;,
    0.013920; 0.495174;,
    0.004946; 0.004476;,
    0.005006; 0.006611;,
    0.220174; 0.491502;,
    0.005006; 0.491502;,
    0.220174; 0.006611;;
   }

   FVFData {
    258;
    48;
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
    0,
    1065353216,
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
    12;
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

    Material painting {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.200000; 0.200000; 0.200000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "C:\\test\\paintings.tga";
     }
    }

   }
  }
}
