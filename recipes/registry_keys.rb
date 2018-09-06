






#V-73647
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'LegalNoticeText',
    type: :multi_string,
    data: ["You are accessing a U.S. Government (USG) Information System (IS) that is
  provided for USG-authorized use only.

  By using this IS (which includes any device attached to this IS), you consent
  to the following conditions:

  -The USG routinely intercepts and monitors communications on this IS for
  purposes including, but not limited to, penetration testing, COMSEC monitoring,
  network operations and defense, personnel misconduct (PM), law enforcement
  (LE), and counterintelligence (CI) investigations.

  -At any time, the USG may inspect and seize data stored on this IS.

  -Communications using, or data stored on, this IS are not private, are subject
  to routine monitoring, interception, and search, and may be disclosed or used
  for any USG-authorized purpose.

  -This IS includes security measures (e.g., authentication and access controls)
  to protect USG interests--not for your personal benefit or privacy.

  -Notwithstanding the above, using this IS does not constitute consent to PM, LE
  or CI investigative searching or monitoring of the content of privileged
  communications, or work product, related to personal representation or services
  by attorneys, psychotherapists, or clergy, and their assistants.  Such
  communications and work product are private and confidential.  See User
  Agreement for details."]
  }]
  action :create
end

#V-73651 (only domain controllers)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon" do
  values [{
    name: 'CachedLogonsCount',
    type: :dword,
    data: 4
  }]
  action :create
end

#V-73669
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'RestrictAnonymous',
    type: :dword,
    data: 1
  }]
  action :create
end
 


#V-73689
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanManServer\\Parameters" do
  values [{
    name: 'EnableForcedLogOff',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73657
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanWorkstation\\Parameters" do
  values [{
    name: 'EnablePlainTextPassword',
    type: :dword,
    data: 0
  }]
  action :create
end


#V-73691
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'LmCompatibilityLevel',
    type: :dword,
    data: 5
  }]
  action :create
end





#V-73663
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters" do
  values [{
    name: 'EnableSecuritySignature',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73635
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'SealSecureChannel',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73637
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'SignSecureChannel',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73639
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'DisablePasswordChange',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73655
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanWorkstation\\Parameters" do
  values [{
    name: 'EnableSecuritySignature',
    type: :dword,
    data: 1
  }]
  action :create
end




#V-73705
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session Manager" do
  values [{
    name: 'ProtectionMode',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73659
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters" do
  values [{
    name: 'AutoDisconnect',
    type: :dword,
    data: 15
  }]
  action :create
end




#V-73627
registry_key "HKEY_LOCAL_MACHINE\\System\\Currentcontrolset\\Control\\Lsa" do
  values [{
    name: 'scenoapplylegacyauditpolicy',
    type: :dword,
    data: 1
  }]
  action :create
end


#V-73707 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'FilterAdministratorToken',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73711 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'ConsentPromptBehaviorAdmin',
    type: :dword,
    data: 4
  }]
  action :create
end

#V-73713 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'ConsentPromptBehaviorUser',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73715 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'EnableInstallerDetection',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73717 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'EnableSecureUIAPaths',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73719 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'EnableLUA',
    type: :dword,
    data: 1
  }]
  action :create
end



#V-73721 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'EnableVirtualization',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73487
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\CredUI" do
  values [{
    name: 'EnumerateAdministrators',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73567
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    name: 'DisablePasswordSaving',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73569
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    name: 'fDisableCdm',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73541 (add only if)
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Rpc" do
  values [{
    name: 'RestrictRemoteClients',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73529
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Printers" do
  values [{
    name: 'DisableHTTPPrinting',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73527
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows NT\\Printers" do
  values [{
    name: 'DisableWebPnPDownload',
    type: :dword,
    data: 1
  }]
  action :create
end


#V-73727
registry_key "HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Attachments" do
  values [{
    name: 'SaveZoneInformation',
    type: :dword,
    data: 2
  }]
  action :create
end

#V-73577
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Internet Explorer\\Feeds" do
  values [{
    name: 'DisableEnclosureDownload',
    type: :dword,
    data: 1
  }]
  recursive true
  action :create
end

#V-73565
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer" do
  values [{
    name: 'PreXPSP2ShellProtocolBehavior',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73587
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Installer" do
  values [{
    name: 'SafeForScripting',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73583
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Installer" do
  values [{
    name: 'EnableUserControl',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73537
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Power\\PowerSettings\\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" do
  values [{
    name: 'DCSettingIndex',
    type: :dword,
    data: 1
  }]
  recursive true
  action :create
end

#V-73539
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Power\\PowerSettings\\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" do
  values [{
    name: 'ACSettingIndex',
    type: :dword,
    data: 1
  }]
  recursive true
  action :create
end

#V-73563
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Explorer" do
  values [{
    name: 'NoHeapTerminationOnCorruption',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73709 (add only if server core)
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'EnableUIADesktopToggle',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73679
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'UseMachineId',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73681
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\MSV1_0" do
  values [{
    name: 'allownullsessionfallback',
    type: :dword,
    data: 0
  }]
  action :create
end


#V-73683
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\pku2u" do
  values [{
    name: 'AllowOnlineID',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73685
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\Kerberos\\Parameters" do
  values [{
    name: 'SupportedEncryptionTypes',
    type: :dword,
    data: 2_147_483_640
  }]
  recursive true
  action :create
end

#V-73543
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\AppCompat" do
  values [{
    name: 'DisableInventory',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73545
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Explorer" do
  values [{
    name: 'NoAutoplayfornonVolume',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73561
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Explorer" do
  values [{
    name: 'NoDataExecutionPrevention',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73547
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer" do
  values [{
    name: 'NoAutorun',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73549
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer" do
  values [{
    name: 'NoDriveTypeAutoRun',
    type: :dword,
    data: 255
  }]
  action :create
end

#V-73667
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'RestrictAnonymousSAM',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73649
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'LegalNoticeCaption',
    type: :multi_string,
    data: ['DoD Notice and Consent Banner, US Department of Defense Warning
  Statement, or a site-defined equivalent.']
  }]
  action :create
end

#V-73553
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\EventLog\\Application" do
  values [{
    name: 'MaxSize',
    type: :dword,
    data: 32768
  }]
  recursive true
  action :create
end

#V-73555
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\EventLog\\Security" do
  values [{
    name: 'MaxSize',
    type: :dword,
    data: 196608
  }]
  recursive true
  action :create
end

#V-73557
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\EventLog\\System" do
  values [{
    name: 'MaxSize',
    type: :dword,
    data: 32768
  }]
  recursive true
  action :create
end

#V-73621
registry_key "HKEY_LOCAL_MACHINE\\System\\Currentcontrolset\\Control\\Lsa" do
  values [{
    name: 'Limitblankpassworduse',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73641
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'MaximumPasswordAge',
    type: :dword,
    data: 30
  }]
  action :create
end

#V-73643
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'RequireStrongKey',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73671
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'DisableDomainCreds',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73673
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'EveryoneIncludesAnonymous',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73687
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa" do
  values [{
    name: 'NoLMHash',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73695
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\MSV1_0" do
  values [{
    name: 'NTLMMinClientSec',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73701
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\FIPSAlgorithmPolicy" do
  values [{
    name: 'Enabled',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73703
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Kernel" do
  values [{
    name: 'ObCaseInsensitive',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73571
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    name: 'fPromptForPassword',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73575
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services" do
  values [{
    name: 'MinEncryptionLevel',
    type: :dword,
    data: 3
  }]
  action :create
end


#V-73585
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Installer" do
  values [{
    name: 'AlwaysInstallElevated',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73495 (add only if)
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'LocalAccountTokenFilterPolicy',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73723
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Control
  Panel\\Desktop" do
  values [{
    name: 'ScreenSaveActive',
    type: :dword,
    data: 1
  }]
  recursive true
  action :create
end

#V-73725
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Control
  Panel\\Desktop" do
  values [{
    name: 'ScreenSaverIsSecure',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73697
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Control\\Lsa\\MSV1_0" do
  values [{
    name: 'NTLMMinServerSec',
    type: :dword,
    data: 537395200
  }]
  action :create
end

#V-73521
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Policies\\EarlyLaunch" do
  values [{
    name: 'DriverLoadPolicy',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73579
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Internet Explorer\\Feeds" do
  values [{
    name: 'AllowBasicAuthInClear',
    type: :dword,
    data: 0
  }]
  recursive true
  action :create
end

#V-73599
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WinRM\\Client" do
  values [{
    name: 'AllowBasic',
    type: :dword,
    data: 0
  }]
  recursive true
  action :create
end

#V-73595
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WinRM\\Client" do
  values [{
    name: 'AllowUnencryptedTraffic',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73597
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WinRM\\Client" do
  values [{
    name: 'AllowDigest',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73593
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WinRM\\Service" do
  values [{
    name: 'AllowBasic',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73603
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\WinRM\\Service" do
  values [{
    name: 'DisableRunAs',
    type: :dword,
    data: 1
  }]
  action :create
end


#V-73645
registry_key "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'InactivityTimeoutSecs',
    type: :dword,
    data: 900
  }]
  action :create
end

#V-73501
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Tcpip\\Parameters" do
  values [{
    name: 'DisableIPSourceRouting',
    type: :dword,
    data: 2
  }]
  action :create
end

#V-73503
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Tcpip\\Parameters" do
  values [{
    name: 'EnableICMPRedirect',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-73505
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netbt\\Parameters" do
  values [{
    name: 'NoNameReleaseOnDemand',
    type: :dword,
    data: 1
  }]
  action :create
end


#V-73493
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Personalization" do
  values [{
    name: 'NoLockScreenSlideshow',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73511
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\Audit" do
  values [{
    name: 'ProcessCreationIncludeCmdLine_Enabled',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73531
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\System" do
  values [{
    name: 'DontDisplayNetworkSelectionUI',
    type: :dword,
    data: 1
  }]
  action :create
  end

#V-73589
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System" do
  values [{
    name: 'DisableAutomaticRestartSignOn',
    type: :dword,
    data: 1
  }]
  action :create
  end

#V-73525
registry_key "HKEY_LOCAL_MACHINE\\Software\\Policies\\Microsoft\\Windows\\Group Policy\\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}" do
  values [{
    name: 'NoGPOListChanges',
    type: :dword,
    data: 0
  }]
  recursive true
  action :create
end

#V-73699
registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Cryptography" do
  values [{
    name: 'ForceKeyProtection',
    type: :dword,
    data: 2
  }]
  action :create
end

#V-73633
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\Netlogon\\Parameters" do
  values [{
    name: 'RequireSignOrSeal',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73653
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanWorkstation\\Parameters" do
  values [{
    name: 'RequireSecuritySignature',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73661
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters" do
  values [{
    name: 'RequireSecuritySignature',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73675
registry_key "HKEY_LOCAL_MACHINE\\System\\CurrentControlSet\\Services\\LanmanServer\\Parameters" do
  values [{
    name: 'restrictnullsessaccess',
    type: :dword,
    data: 1
  }]
  action :create
end

#V-73497
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\SecurityProviders\\Wdigest" do
  values [{
    name: 'UseLogonCredential',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-78123
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\LanmanServer\\Parameters" do
  values [{
    name: 'SMB1',
    type: :dword,
    data: 0
  }]
  action :create
end

#V-78125
registry_key "HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\mrxsmb10" do
  values [{
    name: 'Start',
    type: :dword,
    data: 4
  }]
  action :create
end

