import unittest
from decompy.DataGathering.RepoStructure import RepoStructure
from pathlib import Path, PurePath
import shutil
import json


class test_RepoStructure(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.rs = RepoStructure()
        cls.filtered = open(Path(__file__).parent.joinpath("filteredOfflineResults.json"), "r")
        cls.rs.batch_format(json.loads(cls.filtered.read()), "2018-11-08 16:02:43.266002")

    @classmethod
    def tearDownClass(cls):
        print(cls.rs.root)
        shutil.rmtree(cls.rs.root)

    def test_folder_and_file_generation(self):
        repositories = Path("Repositories")
        repos = [item.name for item in repositories.iterdir() if item.is_dir()]
        self.assertEqual(set(repos),
                         {'10gen-archive-mongo-c-driver-legacy', '21cnbao-training', 'abiggerhammer-hammer',
                          'acassen-keepalived', 'aerospike-aerospike-client-c', 'agl-critbit',
                          'Ai-Thinker-Open-GPRS_C_SDK', 'akaedu-c', 'akheron-jansson',
                          'alessandrofrancesconi-gimp-plugin-bimp', 'alexfru-SmallerC', 'aliyun-aliyun-oss-c-sdk',
                          'amzn-ion-c', 'anael-seghezzi-CToy', 'AndreaCensi-csm', 'angband-angband', 'armon-bloomd',
                          'armon-hlld', 'armon-libart', 'asterisk-asterisk', 'atheme-atheme', 'attractivechaos-klib',
                          'awslabs-s2n', 'Azure-azure-c-shared-utility', 'Azure-azure-iot-sdk-c', 'Azure-azure-uamqp-c',
                          'balde-balde', 'Battelle-movfuscator', 'benoitc-http-parser', 'bfabiszewski-libmobi',
                          'bitcoin-core-secp256k1', 'blei-lab-lda-c', 'Blosc-c-blosc', 'boazsegev-facil.io',
                          'boothj5-profanity', 'boyerjohn-rapidstring', 'breadwallet-breadwallet-core',
                          'brianmario-yajl-ruby', 'buserror-simavr', 'cc65-cc65', 'celery-librabbitmq',
                          'CESNET-libnetconf', 'CESNET-libnetconf2', 'chmod222-cNBT', 'cofyc-dnscrypt-wrapper',
                          'commonmark-cmark', 'couchbase-libcouchbase', 'Cronus-Emulator-Cronus', 'cstack-db_tutorial',
                          'curl-curl', 'cvxgrp-scs', 'Cyan4973-FiniteStateEntropy', 'cypresssemiconductorco-PSoC-4-BLE',
                          'dake-openVP', 'DaveDavenport-rofi', 'DaveGamble-cJSON', 'davidmoreno-onion',
                          'dcreager-libcork', 'devkitPro-libnds', 'dinhviethoa-libetpan', 'DNSPod-dplus-c',
                          'dosgo-ngrok-c', 'dpull-AssetBundleParser', 'drh-cii', 'drh-lcc', 'dryman-opic',
                          'dspinellis-cscout', 'dunst-project-dunst', 'dvidelabs-flatcc', 'eclipse-paho.mqtt.c',
                          'eclipse-wakaama', 'eggheads-eggdrop', 'EIPStackGroup-OpENer', 'ElementsProject-lightning',
                          'elsys-po-homework-2015-1', 'embox-embox', 'endiliey-cs50', 'esnme-ultrajson',
                          'eudisd-c-compiler', 'Exim-exim', 'facebook-libphenom', 'fakenmc-cf4ocl', 'FFmpeg-FFmpeg',
                          'fogleman-Craft', 'fredrik-johansson-arb', 'FreeRDP-FreeRDP', 'freifunk-gluon-gluon',
                          'FSX-misaka', 'gabriel-yajl-objc', 'gentilkiwi-kekeo', 'ggreer-the_silver_searcher',
                          'GHamrouni-Recommender', 'git-git', 'glfw-glfw', 'go-vgo-robotgo', 'google-honggfuzz',
                          'google-upb', 'grobian-carbon-c-relay', 'groonga-groonga', 'haiwen-ccnet', 'halayli-lthread',
                          'HardySimpson-zlog', 'Harvey-OS-harvey', 'hashcat-hashcat', 'hathach-tinyusb',
                          'HdrHistogram-HdrHistogram_c', 'HerculesWS-Hercules', 'hexchat-hexchat', 'hnes-libaco',
                          'holmium-dnsforwarder', 'hughsie-fwupd', 'igraph-igraph', 'inivation-libcaer',
                          'intel-tinycbor', 'jabberd2-jabberd2', 'jdkoftinoff-jdksavdecc-c', 'jedisct1-libsodium',
                          'jeremy-w-objc-zmq', 'JFreegman-toxic', 'jgarzik-cpuminer', 'jgarzik-picocoin',
                          'jmcnamara-libxlsxwriter', 'Joezeo-planeswar', 'jonas-tig', 'jonasschnelli-libbtc',
                          'jplot-Piscine_C-42', 'jserv-facebooc', 'json-c-json-c', 'JuliaMath-openlibm',
                          'JuliaStrings-utf8proc', 'justin-lathrop-c', 'justinmeza-lci', 'jvirkki-libbloom',
                          'k-takata-Onigmo', 'Kazade-kazmath', 'Keruspe-GPaste', 'kframework-c-semantics',
                          'Kinetic-kinetic-c', 'KingOfBrian-VocalKit', 'KitSprout-RedBeanSprout', 'KitSprout-SmartIMU',
                          'kkos-oniguruma', 'kovidgoyal-kitty', 'kronosnet-kronosnet', 'kwgoodman-bottleneck',
                          'LADSoft-OrangeC', 'larmel-lacc', 'laruence-yaf', 'lawrancej-CompilerKit', 'lc-soft-LCUI',
                          'lekkas-c-algorithms', 'libcheck-check', 'libretro-RetroArch', 'libssh2-libssh2',
                          'libtom-libtomcrypt', 'libtom-libtommath', 'libtom-tomsfastmath', 'libusb-libusb',
                          'libusual-libusual', 'limingth-Linux-C-Programming', 'limingth-NCCL',
                          'linux4sam-at91bootstrap', 'liuliu-ccv', 'lloyd-yajl', 'Lora-net-LoRaMac-node',
                          'lp-ObjCHiredis', 'lpereira-hardinfo', 'lpereira-lwan', 'ludocode-mpack',
                          'LudovicRousseau-PCSC', 'luke-jr-bfgminer', 'lxc-lxc', 'lyjdamzwf-chaos', 'lz4-lz4',
                          'martanne-vis', 'matthijskooijman-arduino-lmic', 'maxmind-geoip-api-c',
                          'maxmind-libmaxminddb', 'mi3-dev-android_device_xiaomi_cancro', 'Microsoft-checkedc',
                          'miniponps-42-Piscine-C', 'MoarVM-MoarVM', 'mongodb-mongo-c-driver', 'mono-libgdiplus',
                          'mortie-snow', 'mpv-player-mpv', 'munificent-wren', 'Mzzopublic-C', 'naev-naev',
                          'nanopb-nanopb', 'nasa-cFE', 'nats-io-cnats', 'nbs-system-naxsi', 'Netflix-dynomite',
                          'Netsukuku-netsukuku', 'NetworkBlockDevice-nbd', 'neutrinolabs-xrdp', 'nfc-tools-libnfc',
                          'nigma-pywt', 'ninia-jep', 'NMSSH-NMSSH', 'obgm-libcoap', 'OPCFoundation-UA-AnsiC',
                          'open-mpi-hwloc', 'open-mpi-ompi', 'open-quantum-safe-liboqs', 'OpenChannelSSD-linux',
                          'openslide-openslide', 'orangeduck-Cello', 'orangeduck-Corange', 'Orc-discount',
                          'osxfuse-fuse', 'payden-libwebsock', 'phpredis-phpredis', 'PJK-libcbor', 'PromyLOPh-pianobar',
                          'pubnub-c-core', 'pusher-libPusher', 'qmk-qmk_firmware', 'R4stl1n-cAudio', 'radare-radare2',
                          'rampantpixels-foundation_lib', 'raphydaphy-Q-Operating-System', 'raysan5-raylib',
                          'RIOT-OS-RIOT', 'rougier-freetype-gl', 'rpm-software-management-createrepo_c',
                          'rspamd-rspamd', 'rsyslog-rsyslog', 'ruby-openssl', 'ruby-psych', 'rui314-8cc',
                          'rustyrussell-ccan', 'sahib-rmlint', 'samee-obliv-c', 'samtools-htslib', 'samtools-samtools',
                          'shadowsocks-ChinaDNS', 'Simprints-libAFIS', 'skiselkov-BetterPushbackC',
                          'Skycrab-Linux-C-Web-Server', 'sosy-lab-cpachecker', 'srdja-Collections-C',
                          'statsite-statsite', 'stephane-libmodbus', 'stevedekorte-vertexdb',
                          'sumatrapdfreader-sumatrapdf', 'sustrik-libdill', 'sustrik-libmill',
                          'swift-nav-libswiftnav-legacy', 'systemd-systemd', 'syzygy1-Cfish', 'tass-belgium-picotcp',
                          'tatsuhiro-t-spdylay', 'tboox-tbox', 'Tencent-xLua', 'TheAlgorithms-C',
                          'ThrowTheSwitch-Unity', 'tianocore-edk2', 'TinyCC-tinycc', 'tj-luna', 'troydhanson-uthash',
                          'twcamper-c-programming', 'uclouvain-openjpeg', 'Unidata-netcdf-c', 'Uninett-mod_auth_mellon',
                          'UnknownShadow200-ClassicalSharp', 'urbit-urbit', 'vim-vim', 'Visgean-Zeus', 'vlm-asn1c',
                          'vmg-sundown', 'vonzhou-CSAPP', 'vozlt-nginx-module-vts', 'vurtun-nuklear',
                          'wesleykendall-mpitutorial', 'WickrInc-wickr-crypto-c', 'Wilfred-babyc', 'wmkhoo-taintgrind',
                          'wolkykim-qlibc', 'wuzhouhui-c_standard_lib', 'xethyrion-c-ipfs', 'Xilinx-qemu', 'xiph-opus',
                          'xiph-speex', 'yaml-libyaml', 'yongboy-c_socket.io_server', 'yunghsianglu-ECE264Assignments',
                          'yusufshakeel-C-Project', 'yuvadm-tiva-c', 'yyang42-moulitest',
                          'zedshaw-learn-c-the-hard-way-lectures', 'zeromq-czmq', 'zhaozg-lua-openssl'}
                         )

    def test_meta_file_contents(self):
        meta_files = [config.open().read() for config in Path(self.rs.root).glob("*/Config.META")]

        def correct_meta(file):
            j = json.loads(file)
            self.assertTrue({"url", "name", "author", "filter-date"}.issubset(set(j.keys())))

        for file in meta_files:
            correct_meta(file)
