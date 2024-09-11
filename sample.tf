module "amisco_eu" {
  source      = "git@github.com:performgroup/pe-tf-module-dns?ref=1.7.0"
  name        = "amisco.eu"
  default_ttl = local.default_ttl
  tags        = local.tags
  records = [
    {
      name    = ""
      type    = "A"
      records = ["204.114.11.155"]
    },
    {
      name    = ""
      type    = "MX"
      records = ["0 amisco-eu.mail.protection.outlook.com"]
    },
    {
      name    = ""
      type    = "TXT"
      records = ["MS=ms40426827", "v=spf1 include:spf.protection.outlook.com -all"]
    },
    {
      name    = "autodiscover"
      type    = "CNAME"
      records = ["autodiscover.outlook.com"]
    },
    {
      name    = "awsh"
      type    = "A"
      records = ["176.31.13.89"]
    },
    {
      name    = "roadwarriors.back"
      type    = "A"
      records = ["192.168.0.210"]
    },
    {
      name    = "analyzer.bench"
      type    = "CNAME"
      records = ["analyzer.bench.prozone-it.com."]
    },
    {
      name    = "dashboard.bench"
      type    = "CNAME"
      records = ["dashboard.bench.prozone-it.com."]
    },
    {
      name    = "hub.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "live.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "opponent.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "profile.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "prozone4.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "recruiter.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "videoplayer.bench"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "match-center.cdn"
      type    = "CNAME"
      records = ["wac.af76.edgecastcdn.net."]
    },
    {
      name    = "static.match-center.cdn"
      type    = "CNAME"
      records = ["wac.af76.edgecastcdn.net."]
    },
    {
      name    = "proxy.cloud"
      type    = "A"
      records = ["176.31.13.85"]
    },
    {
      name    = "vpn.cloud"
      type    = "A"
      records = ["176.31.13.81"]
    },
    {
      name    = "cn"
      type    = "A"
      records = ["106.37.213.252"]
    },
    {
      name    = "dashboard.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "dashboard3.cn"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "ftp.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "hub.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "hub3.cn"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "opponent3.cn"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "profile.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "profile3.cn"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "recruiter3.cn"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "recruiterv3.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "videoplayer.cn"
      type    = "CNAME"
      records = ["cn.amisco.eu."]
    },
    {
      name    = "coach"
      type    = "A"
      records = ["92.103.84.146"]
    },
    {
      name    = "dashboard"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "datacentercanal"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "dk"
      type    = "A"
      records = ["213.30.139.108"]
    },
    {
      name    = "esxi.bench.fr"
      type    = "A"
      records = ["37.187.146.149"]
    },
    {
      name    = "front.bench.fr"
      type    = "A"
      records = ["178.33.24.104"]
    },
    {
      name    = "lm.bench.fr"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "proxy.bench.fr"
      type    = "A"
      records = ["178.33.24.111"]
    },
    {
      name    = "read01.bench.fr"
      type    = "A"
      records = ["188.165.14.45"]
    },
    {
      name    = "wsh.bench.fr"
      type    = "CNAME"
      records = ["wsh.bench.prozone-it.com."]
    },
    {
      name    = "wsl.bench.fr"
      type    = "CNAME"
      records = ["wsl.bench.prozone-it.com."]
    },
    {
      name    = "esxi.cloud.fr"
      type    = "A"
      records = ["178.33.97.53"]
    },
    {
      name    = "ws.dev.fr"
      type    = "A"
      records = ["192.168.2.242"]
    },
    {
      name    = "wsh.dev.fr"
      type    = "CNAME"
      records = ["ws.dev.fr.amisco.eu."]
    },
    {
      name    = "wsl.dev.fr"
      type    = "CNAME"
      records = ["ws.dev.fr.amisco.eu."]
    },
    {
      name    = "ihm.drm.fr"
      type    = "CNAME"
      records = ["wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "it.fr"
      type    = "A"
      records = ["192.168.0.4"]
    },
    {
      name    = "dc2003.it.fr"
      type    = "A"
      records = ["192.168.0.2"]
    },
    {
      name    = "dc2008.it.fr"
      type    = "A"
      records = ["192.168.0.3"]
    },
    {
      name    = "fan.it.fr"
      type    = "A"
      records = ["172.16.2.90"]
    },
    {
      name    = "ocs.it.fr"
      type    = "A"
      records = ["172.16.2.80"]
    },
    {
      name    = "proftpd-admin.it.fr"
      type    = "A"
      records = ["176.31.13.85"]
    },
    {
      name    = "qlm.it.fr"
      type    = "A"
      records = ["192.168.2.20"]
    },
    {
      name    = "vcenter.it.fr"
      type    = "A"
      records = ["192.168.0.26"]
    },
    {
      name    = "virus.it.fr"
      type    = "A"
      records = ["192.168.0.6"]
    },
    {
      name    = "vpn.it.fr"
      type    = "A"
      records = ["192.168.0.210"]
    },
    {
      name    = "vpn2.it.fr"
      type    = "A"
      records = ["176.31.13.81"]
    },
    {
      name    = "it2.fr"
      type    = "A"
      records = ["192.168.210.253"]
    },
    {
      name    = "mc-statiques.fr"
      type    = "CNAME"
      records = ["pcache.prod.fr.amisco.eu."]
    },
    {
      name    = "analyzerservice.preprod.fr"
      type    = "CNAME"
      records = ["front.preprod.fr.amisco.eu."]
    },
    {
      name    = "front.preprod.fr"
      type    = "A"
      records = ["172.16.2.63"]
    },
    {
      name    = "prodtools.preprod.fr"
      type    = "A"
      records = ["192.168.2.245"]
    },
    {
      name    = "ws.preprod.fr"
      type    = "A"
      records = ["172.16.2.61"]
    },
    {
      name    = "wsh.preprod.fr"
      type    = "A"
      records = ["172.16.2.70"]
    },
    {
      name    = "front.wsh.preprod.fr"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "wsl.preprod.fr"
      type    = "A"
      records = ["172.16.2.61"]
    },
    {
      name    = "front.wsl.preprod.fr"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "bdd2.0.prod.fr"
      type    = "A"
      records = ["192.168.2.51"]
    },
    {
      name    = "bdd2.3.prod.fr"
      type    = "A"
      records = ["192.168.4.13"]
    },
    {
      name    = "bddread00.prod.fr"
      type    = "A"
      records = ["192.168.4.11"]
    },
    {
      name    = "bddread02.prod.fr"
      type    = "A"
      records = ["178.33.62.227"]
    },
    {
      name    = "cloud.prod.fr"
      type    = "A"
      records = ["37.187.228.114"]
    },
    {
      name    = "drm.prod.fr"
      type    = "A"
      records = ["192.168.1.2"]
    },
    {
      name    = "drm1.prod.fr"
      type    = "A"
      records = ["172.16.2.32"]
    },
    {
      name    = "filer01.prod.fr"
      type    = "A"
      records = ["188.165.12.20"]
    },
    {
      name    = "fluence.prod.fr"
      type    = "A"
      records = ["192.168.3.250"]
    },
    {
      name    = "footcenter.prod.fr"
      type    = "A"
      records = ["178.33.238.106"]
    },
    {
      name    = "ftp.prod.fr"
      type    = "A"
      records = ["172.16.2.10"]
    },
    {
      name    = "matchcenter.prod.fr"
      type    = "A"
      records = ["178.33.238.106"]
    },
    {
      name    = "pcache.prod.fr"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "analyser.postprod.prod.fr"
      type    = "A"
      records = ["192.168.4.20"]
    },
    {
      name    = "extracter.postprod.prod.fr"
      type    = "A"
      records = ["192.168.2.54"]
    },
    {
      name    = "feeder.postprod.prod.fr"
      type    = "A"
      records = ["192.168.4.15"]
    },
    {
      name    = "transferer.postprod.prod.fr"
      type    = "A"
      records = ["192.168.4.41"]
    },
    {
      name    = "preparator.prod.fr"
      type    = "A"
      records = ["192.168.2.236"]
    },
    {
      name    = "prod01.prod.fr"
      type    = "A"
      records = ["192.168.2.11"]
    },
    {
      name    = "prod02.prod.fr"
      type    = "A"
      records = ["192.168.2.12"]
    },
    {
      name    = "prodtools01.prod.fr"
      type    = "A"
      records = ["192.168.2.163"]
    },
    {
      name    = "prodtools02.prod.fr"
      type    = "A"
      records = ["192.168.2.177"]
    },
    {
      name    = "qlickview.prod.fr"
      type    = "A"
      records = ["37.187.156.2"]
    },
    {
      name    = "qlikview.prod.fr"
      type    = "A"
      records = ["37.187.156.2"]
    },
    {
      name    = "requester.prod.fr"
      type    = "A"
      records = ["172.16.2.92"]
    },
    {
      name    = "rugby01.prod.fr"
      type    = "A"
      records = ["37.187.158.8"]
    },
    {
      name    = "wsh.prod.fr"
      type    = "A"
      records = ["172.16.2.68"]
    },
    {
      name    = "afp.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "bein.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "bingbet.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "dfbnet.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "front.wsh.prod.fr"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "idalgo.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "lorna.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "mediapsg.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "perform.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "scorem.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "symah.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "tsmedia1.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "tsmedia2.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "wtv.wsh.prod.fr"
      type    = "CNAME"
      records = ["front.wsh.prod.fr.amisco.eu."]
    },
    {
      name    = "wsl.prod.fr"
      type    = "A"
      records = ["172.16.2.69"]
    },
    {
      name    = "afp.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "ampvisual.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "arnauddroit.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "bein.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "bloomberg.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "front.wsl.prod.fr"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "idalgo.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "itekako.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "lfp.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "perform.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "scorem.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "symah.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "tsmedia.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "wsg.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "wtv.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "yparmeggiani.wsl.prod.fr"
      type    = "CNAME"
      records = ["front.wsl.prod.fr.amisco.eu."]
    },
    {
      name    = "bdd.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.167"]
    },
    {
      name    = "esxi.wwd.prod.fr"
      type    = "A"
      records = ["37.187.228.114"]
    },
    {
      name    = "ftp.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.161"]
    },
    {
      name    = "livemonitor.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.166"]
    },
    {
      name    = "lm-gs.wwd.prod.fr"
      type    = "A"
      records = ["92.222.117.66"]
    },
    {
      name    = "lm-sa.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.169"]
    },
    {
      name    = "lm-va.wwd.prod.fr"
      type    = "A"
      records = ["92.222.117.65"]
    },
    {
      name    = "lm.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.165"]
    },
    {
      name    = "rmq.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.162"]
    },
    {
      name    = "wsh.wwd.prod.fr"
      type    = "A"
      records = ["178.33.68.164"]
    },
    {
      name    = "xml.prod.fr"
      type    = "A"
      records = ["172.16.1.11"]
    },
    {
      name    = "read00.fr"
      type    = "CNAME"
      records = ["bddread00.prod.fr.amisco.eu."]
    },
    {
      name    = "read02.fr"
      type    = "CNAME"
      records = ["bddread02.prod.fr.amisco.eu."]
    },
    {
      name    = "gluster01.technical.fr"
      type    = "A"
      records = ["192.168.0.81"]
    },
    {
      name    = "gluster02.technical.fr"
      type    = "A"
      records = ["192.168.0.82"]
    },
    {
      name    = "gluster03.technical.fr"
      type    = "A"
      records = ["192.168.0.83"]
    },
    {
      name    = "gluster04.technical.fr"
      type    = "A"
      records = ["192.168.0.84"]
    },
    {
      name    = "proxy.technical.fr"
      type    = "A"
      records = ["192.168.0.85"]
    },
    {
      name    = "bddread.test.fr"
      type    = "A"
      records = ["192.168.4.51"]
    },
    {
      name    = "dataquality.test.fr"
      type    = "A"
      records = ["192.168.1.210"]
    },
    {
      name    = "gamesstock.test.fr"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "requester.test.fr"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "wsh.test.fr"
      type    = "A"
      records = ["192.168.2.41"]
    },
    {
      name    = "wsl.test.fr"
      type    = "A"
      records = ["192.168.2.41"]
    },
    {
      name    = "read01.bench.vpn.fr"
      type    = "A"
      records = ["10.8.2.38"]
    },
    {
      name    = "front.preprod.vpn.fr"
      type    = "A"
      records = ["10.8.2.26"]
    },
    {
      name    = "front.prod.vpn.fr"
      type    = "A"
      records = ["10.8.2.34"]
    },
    {
      name    = "read02.vpn.fr"
      type    = "A"
      records = ["10.8.2.30"]
    },
    {
      name    = "write01.vpn.fr"
      type    = "A"
      records = ["10.8.2.10"]
    },
    {
      name    = "ftp"
      type    = "A"
      records = ["92.103.28.84"]
    },
    {
      name    = "afc.ftp"
      type    = "CNAME"
      records = ["ftp.amisco.eu."]
    },
    {
      name    = "bundesliga.ftp"
      type    = "CNAME"
      records = ["pcache.prod.fr.amisco.eu."]
    },
    {
      name    = "afp.match-center.ftp"
      type    = "A"
      records = ["178.33.238.106"]
    },
    {
      name    = "static.match-center.ftp"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "xml.ftp"
      type    = "A"
      records = ["213.30.139.108"]
    },
    {
      name    = "ftp2"
      type    = "A"
      records = ["92.103.28.84"]
    },
    {
      name    = "gamesstock"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "hub"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "afc.idalgo"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "static-afc.idalgo"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "voo.idalgo"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "leaguedatacenter"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "livemonitor"
      type    = "CNAME"
      records = ["live.prod.amisco.eu."]
    },
    {
      name    = "localhost"
      type    = "A"
      records = ["127.0.0.1"]
    },
    {
      name    = "afp.match-center"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "players.match-center"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "static.match-center"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "afc.wsg.match-center"
      type    = "A"
      records = ["82.97.11.134"]
    },
    {
      name    = "wc.wsg.match-center"
      type    = "A"
      records = ["82.97.11.134"]
    },
    {
      name    = "matchcenter2"
      type    = "CNAME"
      records = ["front.bench.fr.amisco.eu."]
    },
    {
      name    = "opponent"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "footcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "130.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "131.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "132.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "133.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "134.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "135.match-center.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "absapsl.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "aca.matchcenter.pcache"
      type    = "CNAME"
      records = ["fr.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "acm.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "afp.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "afs.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "amazulu.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "amiscosouthafrica.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "asm.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "asnl.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "asse.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "bidvest.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "blackaces.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "bloemfontein.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "capetown.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "china.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "demo.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "eag.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "etgfc.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "fcl.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "fcn.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "fcs.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "fcsm.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "fr.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "freestatestar.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "goldenarrow.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "kaiserchief.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "kickoff.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "losc.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "malaga.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "mamelodi.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "maritzburg.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "mhsc.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "moroka.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "moroko.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "mxit.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "ogcn.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "ol.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "orlandopirates.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "platiniumstars.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "polokwane.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "psg.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "qsl.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "rm.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "sb29.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "soccerladuma.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "srfc.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "sscn.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "superliga.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "supersportunited.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "universitypretoria.matchcenter.pcache"
      type    = "CNAME"
      records = ["afs.matchcenter.pcache.amisco.eu."]
    },
    {
      name    = "wsgchampionshipu22.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "wsgchampionsleague.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "wsgworldcup.matchcenter.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "nice1.wsl.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "nice2.wsl.pcache"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "portal"
      type    = "CNAME"
      records = ["prod.amisco.eu."]
    },
    {
      name    = "preprod"
      type    = "A"
      records = ["92.103.28.92"]
    },
    {
      name    = "analyzer.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "dam.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "dashboard.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "datarightmanagement.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "footcenter.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "hub.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "leaguedatacenter.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "live.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "matchcenter.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "opponent.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "prepostmatch.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "profile.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "prozone-connect-v1.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "recruiterv3.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "recruiterv3cn.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "requester.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "videoplayer.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "wsdrm.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "wsh.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "proxy.wsh.preprod"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "wsl.preprod"
      type    = "CNAME"
      records = ["preprod.amisco.eu."]
    },
    {
      name    = "proxy.wsl.preprod"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "prod"
      type    = "A"
      records = ["92.103.28.82"]
    },
    {
      name    = "analyzerservice.prod"
      type    = "CNAME"
      records = ["requester.prod.fr.amisco.eu."]
    },
    {
      name    = "dam.prod"
      type    = "CNAME"
      records = ["requester.prod.fr.amisco.eu."]
    },
    {
      name    = "wslva.india.prod"
      type    = "CNAME"
      records = ["prod.amisco.eu."]
    },
    {
      name    = "live.prod"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "playersearch.prod"
      type    = "CNAME"
      records = ["requester.prod.fr.amisco.eu."]
    },
    {
      name    = "prepostmatch.prod"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "requester.prod"
      type    = "A"
      records = ["92.103.28.89"]
    },
    {
      name    = "wsdrm.prod"
      type    = "CNAME"
      records = ["prod.amisco.eu."]
    },
    {
      name    = "wsh.prod"
      type    = "CNAME"
      records = ["prod.amisco.eu."]
    },
    {
      name    = "wsl.prod"
      type    = "CNAME"
      records = ["wsl.prod.prozone-it.com."]
    },
    {
      name    = "profile"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "prozone-connect-v1"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "recruiter"
      type    = "A"
      records = ["213.30.181.4"]
    },
    {
      name    = "recruiter3"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "recruiterv3"
      type    = "A"
      records = ["92.103.28.85"]
    },
    {
      name    = "roadwarriors"
      type    = "A"
      records = ["213.30.181.6"]
    },
    {
      name    = "ftp.sa"
      type    = "A"
      records = ["41.138.70.142"]
    },
    {
      name    = "awsl.prod.sa"
      type    = "A"
      records = ["41.138.70.142"]
    },
    {
      name    = "ssl"
      type    = "A"
      records = ["92.103.28.94"]
    },
    {
      name    = "afp.static"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "amisco.static"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "streaming"
      type    = "A"
      records = ["213.30.139.111"]
    },
    {
      name    = "technical"
      type    = "A"
      records = ["92.103.28.87"]
    },
    {
      name    = "cacti.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "fan.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "gforge.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "glpi.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "gluster01.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "gluster02.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "gluster03.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "nagios.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "ocs.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "ocsinventory.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "owncloud.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "phpmyadmin.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "redmine.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "repos.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "smokeping.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "svn.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "wiki.technical"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "analyzer.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "bdd.test"
      type    = "A"
      records = ["192.168.2.25"]
    },
    {
      name    = "connect.test"
      type    = "A"
      records = ["192.168.2.40"]
    },
    {
      name    = "dashboard.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "footcenter.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "front.test"
      type    = "A"
      records = ["192.168.2.40"]
    },
    {
      name    = "gamesstock.test"
      type    = "CNAME"
      records = ["technical.amisco.eu."]
    },
    {
      name    = "hub.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "live.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "matchcenter.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "prodtools.test"
      type    = "A"
      records = ["192.168.2.244"]
    },
    {
      name    = "profile.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "recruiter.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "recruiterv3.test"
      type    = "A"
      records = ["192.168.2.40"]
    },
    {
      name    = "requester.test"
      type    = "CNAME"
      records = ["front.test.amisco.eu."]
    },
    {
      name    = "ws.test"
      type    = "A"
      records = ["192.168.2.41"]
    },
    {
      name    = "wsh.test"
      type    = "CNAME"
      records = ["ws.test.amisco.eu."]
    },
    {
      name    = "proxy.wsh.test"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "wsl.test"
      type    = "CNAME"
      records = ["ws.test.amisco.eu."]
    },
    {
      name    = "proxy.wsl.test"
      type    = "A"
      records = ["37.59.32.100"]
    },
    {
      name    = "dmq.wwd.test"
      type    = "A"
      records = ["176.31.5.54"]
    },
    {
      name    = "esxi.wwd.test"
      type    = "A"
      records = ["37.187.144.20"]
    },
    {
      name    = "esxi2.wwd.test"
      type    = "A"
      records = ["37.187.151.135"]
    },
    {
      name    = "lm.wwd.test"
      type    = "A"
      records = ["176.31.5.50"]
    },
    {
      name    = "operator.wwd.test"
      type    = "A"
      records = ["176.31.5.53"]
    },
    {
      name    = "pmq.wwd.test"
      type    = "A"
      records = ["176.31.5.55"]
    },
    {
      name    = "proxy.wwd.test"
      type    = "A"
      records = ["176.31.5.49"]
    },
    {
      name    = "so.wwd.test"
      type    = "A"
      records = ["176.31.5.52"]
    },
    {
      name    = "wsl.wwd.test"
      type    = "A"
      records = ["176.31.5.51"]
    },
    {
      name    = "videoplayer"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "20minutes-ch.wcdraw"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "clients.wcdraw"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "cnn.wcdraw"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "dailymail.wcdraw"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "leparisien.wcdraw"
      type    = "A"
      records = ["213.186.33.24"]
    },
    {
      name    = "webtest"
      type    = "A"
      records = ["92.103.28.88"]
    },
    {
      name    = "wowza"
      type    = "A"
      records = ["92.103.28.90"]
    },
    {
      name    = "wsl-de"
      type    = "A"
      records = ["178.33.68.163"]
    },
    {
      name    = "wsparser"
      type    = "CNAME"
      records = ["proxy.cloud.amisco.eu."]
    },
    {
      name    = "www"
      type    = "CNAME"
      records = ["amisco.eu."]
    },
  ]
  aliases = [
    {
      name = "analyzer.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "dashboard.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "hub.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "livemonitor.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "opponent.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "profile.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    },
    {
      name = "recruiter.devtest"
      type = "ALIAS"
      alias = {
        name                   = "front.test.amisco.eu."
        zone_id                = module.r53_zone_ids.alb.euw1
        evaluate_target_health = false
      }
    }
  ]
}