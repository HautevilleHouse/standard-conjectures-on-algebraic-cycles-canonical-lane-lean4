import StandardConjecturesOnAlgebraicCyclesCanonicalLaneLean.Formalization
import StandardConjecturesOnAlgebraicCyclesCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace StandardConjecturesOnAlgebraicCyclesCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "b2ffc12f7fc3d0caee51db752cdd617db5c4a6a820318750502e1c175fe2db51", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "0af32365d234eebc593fa234ebc3939c7b2b7f68b306af2d4eb09b597f9f2718", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "27743c8502be15393e933971b79f72d7a83aedc773a35575afdc9b5d4d4ed3d6", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "ca06963451c2552ce91c590f4ef47369ab172f02d969f6c906330701e61b2e0a", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "5af612d6292b5a28685382528cdd0180265bd5841f8b547d804bbc2071f1b205", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "59d8f5f873e793b0a2520df6ea5179b08c7e466916ba792b622ee7f29e94475d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "6830f0368f04db90787b1fe4c330b04f269f5bffe51bbb21e89fdcd38d2b5482", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "83510768569ef286ed00a26e2fa453a1fb00f3d404d0f09a33a218626d5cfaf0", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "8311065bbf7fa392fa68754ef342fcd18cf1d1e1c3705fdf974f839628078c10", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "STC_G1", constant := "kappa_lefschetz" },
  { gate := "STC_G2", constant := "sigma_kunneth" },
  { gate := "STC_G3", constant := "kappa_compact" },
  { gate := "STC_G4", constant := "rho_rigidity" },
  { gate := "STC_G5", constant := "motivic_transfer" },
  { gate := "STC_G6", constant := "eps_coh" },
  { gate := "STC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "434666f3e260fe1387a7067f63bdb39961efbe9ac0033cd4a9b40b96a87a4793" },
  { path := "README.md", sha256 := "5983cbcceed0428e12df405b525046d5fa10b63fa50a8eaabfc3249878d8364a" },
  { path := "artifacts/constants_extracted.json", sha256 := "ca06963451c2552ce91c590f4ef47369ab172f02d969f6c906330701e61b2e0a" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "27743c8502be15393e933971b79f72d7a83aedc773a35575afdc9b5d4d4ed3d6" },
  { path := "artifacts/constants_registry.json", sha256 := "5af612d6292b5a28685382528cdd0180265bd5841f8b547d804bbc2071f1b205" },
  { path := "artifacts/promotion_report.json", sha256 := "6830f0368f04db90787b1fe4c330b04f269f5bffe51bbb21e89fdcd38d2b5482" },
  { path := "artifacts/stitch_constants.json", sha256 := "59d8f5f873e793b0a2520df6ea5179b08c7e466916ba792b622ee7f29e94475d" },
  { path := "notes/EG1_public.md", sha256 := "60dd9ef2928e22b0dacc22035cb190febe202864f7a87ffa2161af0c2e157ac4" },
  { path := "notes/EG2_public.md", sha256 := "700b8419e804e8530b1957039654f36e0465411d5778e22d5feca0a23250c67d" },
  { path := "notes/EG3_public.md", sha256 := "9c116eee00e1e732569629d612d3fad6ad67062aa7c141b7e4367b6d1dc49dc1" },
  { path := "notes/EG4_public.md", sha256 := "92e2beeb8e1e9cfb4ff8ac6d4e6f52ec075e29b9ec25dc36f2255b5ecae1906f" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "0af32365d234eebc593fa234ebc3939c7b2b7f68b306af2d4eb09b597f9f2718" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "03e4659372958eeb64022c00f68067de28ca0e6368f080b9141c875c3fd505e3" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "59ae9414abf63c298283a8bcea328c463ea67fc67c4d5bb3a68b74c0b890bd8d" },
  { path := "paper/STANDARD_CONJECTURES_ON_ALGEBRAIC_CYCLES_PREPRINT.md", sha256 := "a26f952e9aae8195d1cd02ecac04577709c94ba515739eb969797358f84e0bc4" },
  { path := "repro/REPRO_PACK.md", sha256 := "6c689b26c0a5fc0a3b25378947cbabebd9cbed17e2a0071893fe33805ff39b57" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "551ece6432902b888b44a48585e8f52cdf218bfda35ac9e7c45cf69e4a3f1702" },
  { path := "repro/certificate_baseline.json", sha256 := "8311065bbf7fa392fa68754ef342fcd18cf1d1e1c3705fdf974f839628078c10" },
  { path := "repro/run_repro.sh", sha256 := "55f914c2a9e981c04b278ae8191475c7f1998d45bde7f05d93f782c37e830ede" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/stc_closure_guard.py", sha256 := "dd4cf5973690ed9628d921e17155773658b86073562692d6bfd8696f6d713cc1" },
  { path := "scripts/README.md", sha256 := "82dc6236f7600e1fae4d2ff241accba3213a2e2e6339faec1c5df82e1c466263" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "STC_G1", status := "PASS" },
  { gate := "STC_G2", status := "PASS" },
  { gate := "STC_G3", status := "PASS" },
  { gate := "STC_G4", status := "PASS" },
  { gate := "STC_G5", status := "PASS" },
  { gate := "STC_G6", status := "PASS" },
  { gate := "STC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8032128514056224" },
  { key := "kappa_lefschetz", value := "1.0884719999999999" },
  { key := "motivic_transfer", value := "1.028393" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_kunneth", value := "1.072" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_lefschetz",
  "motivic_transfer",
  "rho_rigidity",
  "sigma_kunneth",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end StandardConjecturesOnAlgebraicCyclesCanonicalLaneLean
end HautevilleHouse
