Return-Path: <open-iscsi+bncBAABBY5C4WSQMGQEWQX24JQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3d.google.com (mail-oa1-x3d.google.com [IPv6:2001:4860:4864:20::3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F306775B264
	for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 17:23:18 +0200 (CEST)
Received: by mail-oa1-x3d.google.com with SMTP id 586e51a60fabf-1b4685de17asf1489259fac.0
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 08:23:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689866597; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y9bJz5yoOeHREBME1y0EKQ9MZV89pG1S7W9ifJwVsHAtDzhRLX4yJBmnDOkFbxnC66
         rKA5KQkuk83lwKVWltThrUga3zTcx/MTgGzWP/Nxob+AnsHuHSODoWbAf5l46HWOkeGf
         qPNbcMUfireqbfJy9dEMzT4p/6ifdRlPItJd6g5jyUccaqlILnmKroTRNxlzxq3GYpOR
         otSSkH9tsxLnZ3SwQzFU3jtSw8Cmp/u+ooaIxMzKMXNvbQCXbT/WgIGaI+GV4HUkt8Ot
         tIRh/R9mVjnJoFaWFrF7xb2UuTTJBL4XIrma5hhnhjYtogOMKDWnu3wKsbuUGKdKHORr
         adMA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=GXsejOLBLJfViWUf0JmHdOZeky7ac16MIQNINWD6vL8=;
        fh=BRF/2x+9JQX+iinxabdVqVAlNEHgmMQUWn6Shc6adms=;
        b=gYfiMpsEMgCFZkx4w7e6p3YQnM8rolSFTygXHvpbtEgsXAEjsIkGFy+7kp9pfmrPQB
         MQ7U9SlnCiNAjXyz0aOBMUeDG+LQi3hlQLACJnKRbDikIFW5vuoQ+bSs8eRvVUjYIwyF
         4oDa8/ElBb7ZyfZyfZ39t4f7sd9+rW+cnD5YaNLOmKH7fyfKTP1+oJCFy+vpoX92OgaI
         H4gYn0U1OCyLITJt5PO0z/GwjXAeRnbKrlPSwPGvDl7z0AvxCNVrHDYqxY5umn9Wobn8
         Yw/nHEkqTanDSHhN1qjDWHbQ3XVkvEPaNdIHo093t6rdpYoiyFGmlbfE6kyRz9HGgbuH
         Lz7g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=BhiRjYd1;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::711 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXsejOLBLJfViWUf0JmHdOZeky7ac16MIQNINWD6vL8=;
        b=YxBRg3m+m5UXdb3pg/U23T6MH62NDERsBGDBwf1YWnu1OsC21UHkdASnh+PNUX55Yk
         apU1au5wl6DiVeaKQx9rX0KKobE9jalNGOQTNX/w5ijKHaC14XIcuNSEHSxdeHzL1pjf
         htKBpjpQtS2nI+PQ/EYiDvZI1V38xaQIvR9iSi8s3CrSOOI5sUWq+2zed8lFmswY0wds
         UFJeABeeZ6V8D3UMKAXUJi6VNdXuuJURYYuBrkY/leTUvc7VKMKUCqdhrI5DMaQu6onz
         bJTltBhbpNtXGJuwOOixWIVHbEkVs9VCYuCfVLvj3sIXbhn/uV2iHZyO+7AgY7wG7Ecp
         YfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GXsejOLBLJfViWUf0JmHdOZeky7ac16MIQNINWD6vL8=;
        b=I1+3cv6h69tBc+83OUEEYlaa4TiiiWZZPasGveGTss6wwgDf1NKBYv176r4YO6qlue
         hwSUJ+vq+nt0g4i/YdfzJ4HD3EixiwkZ4+UOaaIHTa2pfcfZ8pczL+AtMRhrXaTvyslP
         W1q0NdEKaMtsu2ohyUDp62d2haKbgdLRHvRT8wznycewZseNzbQ3c8ZGWAifeRCKsk+S
         yrQVRURvatLcgZPdkqqHo8YxADuX38rnQNhUbAlk1l3hTQuqgPnl0SRLCo6flGBj+99X
         gu5g9PkfSyCPzlvQtiWVIUeyPXhcr7ZdL3AXyjTm2Lec7mhvBtZgRno1xT+xYELlKwEY
         RxJA==
X-Gm-Message-State: ABy/qLYpvgHPm3oAaQHvb98PTKjejL3iLxPayaW7xJUOj5AdFdljSDBf
	CkKaf6ggiUS0UBRsyhJUknM=
X-Google-Smtp-Source: APBJJlFopZ4qQ94mudlJDrpCTfiUYFthhXdpUX4pSPgKVqiMOlN4Kp3Ebj4KA+M2D4wypf+S/ghR0A==
X-Received: by 2002:a05:6870:a912:b0:1b4:4a2e:b69c with SMTP id eq18-20020a056870a91200b001b44a2eb69cmr2422443oab.18.1689866597016;
        Thu, 20 Jul 2023 08:23:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:fb9e:b0:1ba:f33e:b2ac with SMTP id
 kv30-20020a056870fb9e00b001baf33eb2acls1606845oab.1.-pod-prod-01-us; Thu, 20
 Jul 2023 08:23:15 -0700 (PDT)
X-Received: by 2002:a05:6870:b7a6:b0:1b3:7919:e9dd with SMTP id ed38-20020a056870b7a600b001b37919e9ddmr2500127oab.5.1689866595520;
        Thu, 20 Jul 2023 08:23:15 -0700 (PDT)
Received: by 2002:a05:6808:1528:b0:3a4:244d:fe3e with SMTP id 5614622812f47-3a43bfeed93msb6e;
        Mon, 17 Jul 2023 02:27:09 -0700 (PDT)
X-Received: by 2002:a17:902:778f:b0:1b8:3786:3344 with SMTP id o15-20020a170902778f00b001b837863344mr9797490pll.49.1689586028888;
        Mon, 17 Jul 2023 02:27:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689586028; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcoyaivO87S8Xd8tCOrDilUrtlErKi/3hmI1vEmcGT19vnfOdElIrv8En2bJA5i37u
         pUROBRrerquDKH+4XkA6lE26k8wGQtmdc2oKvJti90K3MAQdcibMq2Hu7bSAM5InvNVH
         o40kr5wyYOqjf0l1okUjBpMlsSgqyqrxkS16NXSjmZ3vh1sZrnNqP/225DtLRf6ShYNV
         J1cdaDHetZMgMLx/iHt+6Jl2HY5FbPFwYcy29Nu9gPgFJHlbOAZqdIWdfNHGvo+/cwXL
         zLF3bryp9w6VLeIo0CjeaHda4zL7YSL8zMThtEKCfSCnWoCN5hHbHOMf85RqzyZTQbEo
         NJhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aT+EmTIM5+5KB0FEDiM153IWWv3fGKE5EhSv3s7zMOo=;
        fh=ds0Z6ayL4xapsneAhKDRH5WTMZ16akCu9tpGtq8I/nY=;
        b=SQ4E9BqOkB5r78Rpd+eROdO1+21toVFbUAZ/xOStYOb+mAaWFRyCgK1gNyhnyTCK70
         ksRaYlIQswHf1WpA9xTvk5PJAXhVK0VwbFW6At/qyUEHlqFkhiHQwuVg29f2gMDuJ3Yg
         aFTDjD8LQrlkJ6WCmCi2OeyxI9AwZQZJM89q+8muTSH5ahmfhHO/cWMqUy3XhEwk9FO9
         0iALhRG7GCsbke7LpEFvwkuGAJJSpapmxNMdFaCddZcB5pZ/lWZlvZKAMIuGnBzwhDvG
         SH4fyDYbm8CcKjueeBziFcHf5PJg3U28fwnDTgaIBTERpVZxmunH5E7wiaLBhzQjI5cg
         90xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=BhiRjYd1;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::711 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on20711.outbound.protection.outlook.com. [2a01:111:f400:feae::711])
        by gmr-mx.google.com with ESMTPS id ix11-20020a170902f80b00b001b878f9e121si632153plb.0.2023.07.17.02.27.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jul 2023 02:27:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feae::711 as permitted sender) client-ip=2a01:111:f400:feae::711;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3cuiwpnJd+vt/widWhUzA/8nSK6zW2+nkxYHoPOSIGW6Pnrck9fXeM/94GQn9EGm/ftayeqOLVX/+T2sugdM3Uf5O7DYalDefzR7IZTJQNGaAJuKpQAQY/gK4cka3mrSjCjZqRLZMSUpyUMQ6jSCY/cnxEoUN07rZRmxb27LJKAag8i4TsFUZILlPSbsZyznz1aD1BGlXXhQE3kWjbZAqb5Qj91gfO2+eVrtP7AIA3SdL5au3VWfLeiZsosH2bkW724D8BU1+iakr7rMg9Tom3ykziz+kE4YB5L9E/xY8AMmv3mTkfSxXHqI4GiYZmruTC7gHsPjTDHQX4P5kwVEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aT+EmTIM5+5KB0FEDiM153IWWv3fGKE5EhSv3s7zMOo=;
 b=ORTIEasmnkwkzTCoJP1OBCfLMtHfKG4fh1imJuxrLJeAzZDleth7+sN4snkEXTsQH1hxyh9hGdk2lIxQtqwDt/LEOYaNAMjxDBZABFBfduima4jvlGU3TQJsYa5StbkdR2UFYLGrXVEGdHiTok4SHjej//oCF4RICPc2/WqxPja9IMjie3orb6r/y5YjeDnH9HSARlnzNT8vxun5hcYIauic4RXlLS0NXkY5+EcXNRdlnKByF7RQBVG6QpxT+krwDejGLt4RAOYkXD0yIyB3WyBesaAfxvEcs2ljMdKu9zBxC50UpVlg8DCEHB/RRq+5W2izA7vAei8K1fnRIBCc3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com (2603:1096:4:1dc::9) by
 KL1PR06MB6273.apcprd06.prod.outlook.com (2603:1096:820:ec::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Mon, 17 Jul 2023 09:27:05 +0000
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::f9b8:80b5:844e:f49a]) by SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::f9b8:80b5:844e:f49a%6]) with mapi id 15.20.6565.037; Mon, 17 Jul 2023
 09:27:05 +0000
From: "'Minjie Du' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com (open list:ISCSI),
	linux-scsi@vger.kernel.org (open list:ISCSI),
	linux-kernel@vger.kernel.org (open list)
Cc: opensource.kernel@vivo.com,
	Minjie Du <duminjie@vivo.com>
Subject: [PATCH v1] scsi: iscsi: use kfree_sensitive() in iscsi_session_free()
Date: Mon, 17 Jul 2023 17:26:57 +0800
Message-Id: <20230717092657.9776-1-duminjie@vivo.com>
X-Mailer: git-send-email 2.39.0
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SG2PR04CA0157.apcprd04.prod.outlook.com (2603:1096:4::19)
 To SG2PR06MB5288.apcprd06.prod.outlook.com (2603:1096:4:1dc::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PR06MB5288:EE_|KL1PR06MB6273:EE_
X-MS-Office365-Filtering-Correlation-Id: fb03584b-2a78-4ee0-6032-08db86a7fc19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GgHQy3vRPACvtrKFUsa52fhRz5iNIbRNErHoha47gRIs+wZRGE84F0Zzy51FV7Y2oAGNKGSt4DfFv7MPEAIbN2iYETvuyuglb8dm4iub4D953FkhWhMgOCR0D9Dro2D9SIFHweAwZj281VPxJgdFeW0AERELR4Xx1xbdD0PHzGm5UBKs3oDhY/0fbSsQOLdjyAwUIePiPMRIhp2/jgNGqytGxcEvHvtbT5A4/OYvIG1RePeZVHGaf0IC0jPd6fthFcAyem4pzYjiV8FUaqi/S6rTJYqvu6xVT/jmljcu6nc2LkfoiJfxfzq29abN/YOoVIl1OxNEbFsGGPL3Q4FPjmqsY4cDvtKikGsB/MCpbXqBX988A+L3UiH/0rSMBYtvGP9ABwj0CjdUQpmMd6VcAnX+ULs7rC05tJk2HR6BH/lb5BMEdaTRgxf/Z6si9r839IZrZ/YeKE/hTCQde3+ECabywOEx6VPAceDn1ROsB/R0A1VTSW2dfKUOpRoZA+tazfcHqRAqyebpgryT3tetKdoUY1nlIa1MVtxVmHFjMvSkPtlft9C0goYrDB0Lzl0L4i7UdNUEQGyXON0YUxgfLbQPkLSVetwmEzkVSNpeK4qWtZFu/rWS/UB3GwUt10xo
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR06MB5288.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199021)(83380400001)(52116002)(478600001)(4744005)(186003)(2616005)(86362001)(6486002)(26005)(1076003)(6506007)(6512007)(107886003)(66556008)(66946007)(38350700002)(38100700002)(110136005)(41300700001)(2906002)(36756003)(6666004)(4326008)(8676002)(316002)(5660300002)(8936002)(66476007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8G7M/CcFAo+OqYUWsmBMaftxmUh0NAAHdgTTePgeKettQQVRKlxSpvxiWYMX?=
 =?us-ascii?Q?jhOzrag9evS4j+EflIM0U5zz2+3CkI+s5OC7aUpfMng34Tz+bVnYNvBrm3vs?=
 =?us-ascii?Q?UdVnMYJvy5qMo546NoOs16/xdDwiVr3H3IDo1pYqZrxGRYfjPxkcFXL6schn?=
 =?us-ascii?Q?1x2mbw0qhgJddn/WDbFKZfT8llaM73ozMku9zeiuLoM5sWhauwaCu7moWOmt?=
 =?us-ascii?Q?jY/yK9Rjk+1aTvxiDNsEhTHO891Fx0kWmsavbcoEkbDwCOSHdwNB1Nx0sQve?=
 =?us-ascii?Q?5BaJNS+YLOdQ6IGFNP1TSnNc7f3zry8yAtelC5m/sgnyK/EtkEuDte5XhL38?=
 =?us-ascii?Q?pGvdufgdelFVUR5zcQOzSr43oWKI59Kc2yK6+oreAYwcwPGhpUxdXpA97O96?=
 =?us-ascii?Q?kkRwBrf3kQjY63pgVOhfxbRF0aqWOJ2YpbQ4mfFJHTL6/uCFAoF2ZfGubsiq?=
 =?us-ascii?Q?E6hkc1R/sf0SD6CmZpblX5has8VWwc74lgrvMAgXo+sw8bBoQHkQ94NUeVAF?=
 =?us-ascii?Q?qGi0GDo0/0+jYqoTaL6IBdG5S9YYI1Fn4EU/rNNscLV3Cd+e+66DIs2taU3Y?=
 =?us-ascii?Q?MvxliNQ30h2NeXjye0gbWZlBVSidCD4OPosOLIgH7hYBvCv4bYlhWo4Q0Iep?=
 =?us-ascii?Q?Hd6HD/IPszHy58Yhd3CrBZ5fpIDyTTtt4Ft7TS9ZtkV7szqla1KD0R2okHIh?=
 =?us-ascii?Q?oucumLdPz82VlEt7poaVXqBM8pSniTq/GD9KeD71cnS0uYh1jQInjWmXY1mX?=
 =?us-ascii?Q?xDag5PWZ8sFdcNhTx4xJLd94N1ClFzeePMTlhHOaWQ8BN5CR5yvwwCb+oDTF?=
 =?us-ascii?Q?9H01SOFVlDFl0+yE2yr30tLLN84yFEVYSF7/42Yyy8lA3mxqYU6OdDyC32ID?=
 =?us-ascii?Q?uzcXSckKto3sJ0a6sLF8cJ5SVbX+LvKyhaPQa6WQPJib2VbbLh380SJ+F5g4?=
 =?us-ascii?Q?YDjtmR6S3fVaDMa2Q9qCGsHy7L7qKnCLNh6nqQSOf8hhK18rgaNghIa5IzOI?=
 =?us-ascii?Q?0WNW2T3I+mP3yCvfBEWQ6bbIye+MFkQjilWkN11QgGU1CWgFOlutbdjFm369?=
 =?us-ascii?Q?d7P5Ngz341hxjLrFIBJy3+TpUK52lZGqP59Qo9KvIRoDLR4W5YFqTjQKrE82?=
 =?us-ascii?Q?yQ692c5LYhLJSime5yAVYJ4drr0mxY6rzT2b0zzzdlCDZ6XkUMmiBS+Ld5d4?=
 =?us-ascii?Q?Nlog5hd0yZmtoAGa6pvHRT5W7SuuIHBfoTc3hE+wtjRu0t8D2mFWKaUjPYlc?=
 =?us-ascii?Q?lQ+Zm480HHRU/ucDDNn+jZxv/LZJiSAtrpJ6JxzByz4NjblkjJhAMasSw3iL?=
 =?us-ascii?Q?buJ7pwiQbOmWg9ZlxQj1bx0CykV5kSRAeJ3KfABOp3ZXOUHIjf9Ljta+g0Xz?=
 =?us-ascii?Q?FMhc4J8znXjqE3KtKB7b6Rv9wgiwfHg6D6WQSWo1u0mXDYvGf6XqMqzlEIwJ?=
 =?us-ascii?Q?8lh4LEko0j0PcjEpnErV+ksRohDYN0Q/CNOiRVnl5ZbYDiTuKhaWGU1sVsjP?=
 =?us-ascii?Q?kHe+bg3DMDNE2smyCyr2EFzlkjcSj2aWyQsm+XPvbPCSeaChluYIa8/neqZD?=
 =?us-ascii?Q?fKI6O1vKulsO4ewQ0LU5rjF1HRprexLq4DVFkiO7?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb03584b-2a78-4ee0-6032-08db86a7fc19
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB5288.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 09:27:05.1592
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mqE/vQJCy/ezDQTEwfPlGAq9H0zKl+BMWmf7hADfo0vqeJ7SOqo9l2zzxNih0ABcM9Bp9fcBZPdAe72O9kGBdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6273
X-Original-Sender: duminjie@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vivo.com header.s=selector2 header.b=BhiRjYd1;       arc=pass (i=1
 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass
 fromdomain=vivo.com);       spf=pass (google.com: domain of duminjie@vivo.com
 designates 2a01:111:f400:feae::711 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
X-Original-From: Minjie Du <duminjie@vivo.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

session might contain private part of the password, so better use
kfree_sensitive() to free it.
In iscsi_session_free() use kfree_sensitive() to free session->password.

Signed-off-by: Minjie Du <duminjie@vivo.com>
---
 drivers/scsi/libiscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 0fda8905e..2f273229c 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3132,7 +3132,7 @@ void iscsi_session_free(struct iscsi_cls_session *cls_session)
 	struct module *owner = cls_session->transport->owner;
 
 	iscsi_pool_free(&session->cmdpool);
-	kfree(session->password);
+	kfree_sensitive(session->password);
 	kfree(session->password_in);
 	kfree(session->username);
 	kfree(session->username_in);
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230717092657.9776-1-duminjie%40vivo.com.
