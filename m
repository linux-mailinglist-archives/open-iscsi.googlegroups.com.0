Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBPUHTGMAMGQESP2I2AA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A4659FE5A
	for <lists+open-iscsi@lfdr.de>; Wed, 24 Aug 2022 17:29:05 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id h4-20020a056830034400b00638c37d1349sf6073903ote.10
        for <lists+open-iscsi@lfdr.de>; Wed, 24 Aug 2022 08:29:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1661354944; cv=pass;
        d=google.com; s=arc-20160816;
        b=lF/GbofvM6ykOBKH+A+3VYplmUMlWir8iD/runCxLCvQeRCxgU1HKAbSOIYK1hfoAF
         OPgaGdd7CSjYL52YJEqZB1VK+l8OGMwSTTq+cj7c1zzGNUNw8Fe28MGQxLmiQw/3pBNu
         ESe9hh34NwpnVjz1C99pO3c9s8AjatV0uDTMAgMG9MIVPgXrmiunPgQOkRMslaJGQ3qc
         pU2g+7oV3MXPiAyqTXu5Eh0rW1iFe19AsZsCfPUZ1fRkA8/kQXMRkPdvYszhmNFOJuYv
         ZTELhut844o2gL1VTdwLGvMUHfDVBef39Dy7Te33QMqB5fYI0yPl5Z+EYdUHTN0INYlt
         0/NA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=H/I+iYKzxUQY/iolvzRXEv0rzZIduhoHJhqyv7j+q0o=;
        b=ijd50Bm+cXwr2QD4FTwe8uwkNUerQ8f6tspowwAxjvFNFo9DysCkhuEkpx/mnHMfDQ
         JhPZNJZuwcx8LeKOMQvDMAamIxwdFMKRIIF5cmKl+ViBt0trSdRVCC3fCr0N5DI9+sWG
         0LiURNum3Ig4WZQ1QyDwE3reHmX+ee7G8WTH3YTWJKFWrgOWEFQ52DFgnRMpkTOT6lpn
         TkQ64S9cbr4u0IupvuL5kZ7XLRgo+0IYNSUX8Gx2FXJA/OaO/gdMxLAo1FAMa1mtgswe
         /ZwOnnksm0J6gaToBXv0Bsz4ZIEs63uw4tpFx95YrgJmGsU0N5AfvlbRM/131nbqqIQG
         jS1Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=fjOubru5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="xwwRV/bi";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender:from:to:cc;
        bh=H/I+iYKzxUQY/iolvzRXEv0rzZIduhoHJhqyv7j+q0o=;
        b=lX4o6sd5OnlUCivhDx5h6WfUiUJeR1Irks2Kso6TS4ISeMB1LED5R3evKpeudrh3nl
         qSHkNibh7CBtO5dyTYqJiPWSTLhMkh62GRrGm7izTrABcm6bZa4+AAHXenieSiapXZWJ
         +EpwT471+a0afTEgYPubL1Rt7XFEnXg4gNTrlLdxlcFnVLOxEbfET7VSbgxYuFGEvE5R
         i8qnmr3SiWrzGeMgCmZHlZ22ihLkhh678PkqY0dDTGEcXDLi9He5zNZzVHk9xu0R2R2F
         c8OYvF3BXVQiKE+kHqmDWZUmDywDo7eLSBbwrAoLWLSvmTcEC+b9NMFIWk6qribT1MgR
         Ua4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc;
        bh=H/I+iYKzxUQY/iolvzRXEv0rzZIduhoHJhqyv7j+q0o=;
        b=s1k1zSP2jnzHP+tfbJ8fH5UNhG2SMPXOwEFgsWmdEPQPPUA3v/JxTvKMhP5fG6zkee
         +fLLYfurp48WBCHZrPs6a6n7hSLrKuXcV2qriuZLktYtoJYDJXxo4+4JJGErFPjGaeBC
         UMorjvAj/5Cn8e1Ecvajf2ZY0FBRzG60knxYL1HzxhJA/SlXNdpsFbFBI1oZaAbmWu4Z
         cyXZ6vmQDQm3kLiMZ739DKre/2rqP3bNaqnu/UzpCJfeTvEH2PnfxwTLfrFWTFR1ChKv
         Kl6uq79Bg/JeFRgt+irj/Nhq7kqIqMhw8H1Cfq0khp4cgN0I59tvd9xIYHylgqFL5Lot
         +xdw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo0PEaN+vMW1AdkSeObHLos4KJ17j1m2obw4syYfETbHKZoJI6qc
	FYbrRVV/qpkbXcI/gVGJE7o=
X-Google-Smtp-Source: AA6agR61JVz0Xdi1DGmhJ0G8lr45RMt9dJbF5kLNdyIIlPIJdcDpPoFa7gs+Xo+ohLUYyyYsJAg0Sw==
X-Received: by 2002:a05:6870:659f:b0:11d:8179:bd97 with SMTP id fp31-20020a056870659f00b0011d8179bd97mr3827297oab.278.1661354944361;
        Wed, 24 Aug 2022 08:29:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:8801:b0:11c:88f5:79d7 with SMTP id
 n1-20020a056870880100b0011c88f579d7ls5290976oam.3.-pod-prod-gmail; Wed, 24
 Aug 2022 08:29:02 -0700 (PDT)
X-Received: by 2002:a05:6870:40d2:b0:11c:a325:48c0 with SMTP id l18-20020a05687040d200b0011ca32548c0mr4007067oal.99.1661354942442;
        Wed, 24 Aug 2022 08:29:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661354942; cv=pass;
        d=google.com; s=arc-20160816;
        b=vg0yWNoER36H6IZpoTbhLSlr5Gy+IXiUOzIAiIDmPCyXmGUgVD2z8c0ZZBdAWleFb8
         v2a2qk/m8k1by+x/Mcqkt4Uwtnk3abPzagPPccjTUU4OOz+Fma6vLjVQiQGErmBgMfd9
         tjE3UysUrzOtu4d3FMq9PUjypK4u0h6fz4jysg0pckfVbIScDJy5NkhbUAZmS8yBu6br
         M2VznIEmfw5mdHzRhPynA7cqX7dPy/Y1heNr1HasYvas5AkR0HQXxbioaS6PGJS11Vqy
         0ZCf27askVUeDNEArPZ/vmDAsNOuCStINT2KvziEzaUF6xp8YbOO9kGqJZaUofC6Milk
         nWgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature:dkim-signature;
        bh=c7x8dJQJ2v/b+jcZH2mls8HVeFTjtXHjS2VakzJ37dc=;
        b=Xxw/ZyaYxCnG8Y8sM6JU2YlcKwCCJyCiDMECVrox5267gcXTDAHuaKLkTJi2UHTMFX
         8RXo5AMy37soj4xOJ4rwjMUpOd81ure2loYzHLcuLXVkMnebta/8T5w3ScX0TpFmAsV/
         OWnIrlrGeHzbumC/4Mbe1j9Mv+OD0RPHrFtHm/cEt3dtCdSQJuYfv+IfvN76oyUkG1f6
         eqObIqHrsLVbRg1G4oegetudUNMTKejgFuOvFUTq1+z9HCiRYWSEF0oDV31OpZpiNsf3
         pVND7sBc9f4rzUZ9fjY3aFV3nXqPxotetHsaz34ECR1hVNxKi3ymz6T3PCsdCwBvfbjc
         VJWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=fjOubru5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="xwwRV/bi";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id m29-20020a056870059d00b0010c5005e1c8si2249315oap.3.2022.08.24.08.29.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Aug 2022 08:29:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27OFLF0c013095;
	Wed, 24 Aug 2022 15:29:02 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j4w25ku9s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Aug 2022 15:29:01 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 27OEp496028395;
	Wed, 24 Aug 2022 15:29:00 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3j5n4k4tyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Aug 2022 15:29:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QOeK11ml5EC4iYItGsS2fH5CmxBQ29KKsI0BzBZcE4pnx8z7Edfrh8xaQpE2uL3U/kFIMcZ4/Tf5929ggEsoXrJ0xbL2QdDZcIE8TqJ8K2L6ytFHmTnT1KKkMS1OD1Hpf96cNt42W1qScZIWMBc/fQH8UweJLXjNtZPVq3wnM489OIaeWRNRjB/bg5SGB7Yt+ICel6NbdWU8ltZf8svdWF//0qOrK4u4YU1458BxUpdSESNOEToScTDhzx6H9VCrqv3TUdN84wjTsI2zsQ8lXFu7jzn0DdSYxSxwnRWA4NG3p3/6nBOp8FMNkoXGrLw0BheSQyS/lGvebgiiv3Ap3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c7x8dJQJ2v/b+jcZH2mls8HVeFTjtXHjS2VakzJ37dc=;
 b=TtBEMmIiY0xhH/QZQj2GdRUSdFDEeW1V5iOlMEyKGm6Q/BIleuocNjD8cv+SkjbXqxcDhs8JUVyGBgjtSFxJyUQDbic8Ec04J2ZNQNbxLEx3MD19v6GB5Ql5lDXJzZM4L9BYqsPH1toHHABP/I5HcguvNtIYWUaepol4pu8Fu9Lo4QhOcmD11JlvsydAFvOq1Zs39YHXpEBKR1NOHqYZX81xyjSNmJuSan4+ymRxVvkZ+DGXIJgAwuTkNr1XwNbXxWCZduea1/0YZp9XCc+XdU1jhioYT+gIWdnbVoadYiIkh2UxFq0s9Fsf0L6W5fyaRHIIMO7bPWC+0wb/frvOWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DS7PR10MB4959.namprd10.prod.outlook.com (2603:10b6:5:3a0::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Wed, 24 Aug 2022 15:28:58 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50%6]) with mapi id 15.20.5546.024; Wed, 24 Aug 2022
 15:28:58 +0000
From: Michael Christie <michael.christie@oracle.com>
To: Uday Shankar <ushankar@purestorage.com>,
        "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>
CC: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Thread-Topic: [PATCH] recovery: remove onlining of devices via sysfs
Thread-Index: AQHYtzffVleTL0CcNEakvoMrZ3zBkK2+K2Sz
Date: Wed, 24 Aug 2022 15:28:58 +0000
Message-ID: <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
In-Reply-To: <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a8eafb0-901f-4796-20f4-08da85e55d27
x-ms-traffictypediagnostic: DS7PR10MB4959:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oetLvvM+VEGDPPoTMDN5HQ/1JX4+G4dsTPWTlbyC1WKFiv83i1qLpd8qEedl2yCHiGT/hzlnMAXuYanSdhc5YuFk8V++bMGwdOStRwElpg/6l8rBnvhaFHoOzqXpnZmjxFP3pcq5zCrnr91JKJWLzqYuVEtkmXZjnsVUfoDqJf+w06sAuoC9Yjq9+7qezKL1G6oaBkoaS0OfKvjGO8fVSddyf3/u2Ig+ES09RR++kTZzkhlOFHQjwvlPsMHmjh5jeCpxtgmFCm9akNwC5pw89vaxIMQd8DLQMrV3A8I81kMZS0qnXacdBiqB1xHaNA70fgNIKlWqE1KQUvS7uuQxWgPuqX0+bH1IKiSizcchzF2TOPDMqr5CzXYVQyfLN+moowei3A2P5IrulTszzxBV9ZXK3E2J6SN8zxu71XGNgQcnxyPbSPb2Gndw6uYhpcGvFmnRuAYyawwtRg45+r/ceuVeA2rS6O4bCGsifxlBIc5pwk1Gmk3ysApMgZdJK9//DYqK939K+jJ6ohjCpuJva93gEBo8fYI+tqD65KWATLVTXrCXcM5a/i78mdS0Q0LmEEG5MvOU2cW7VH2IePSyIqKx2MH8XfFJO08BXDaU5UCZjXWyZBYiAqkQvIwo5uL+3ZWL/cGnjLho3hROx2lwHn620hIRIGBdsa+x2lEO3m1HERh5D7hn4Bs8AiW60yNRuyb7OpSBT9xZAKlFwH+7N0475mhjBYC9srMBOPny++cB1tbWUvOjq9fhZpVhr/dknwkELmcSvrO4IIYcJaKcCcc8MCjLcjb97kEC3+Ujahk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(366004)(39860400002)(136003)(376002)(346002)(316002)(71200400001)(166002)(33656002)(9686003)(5660300002)(26005)(478600001)(122000001)(4326008)(38100700002)(8676002)(8936002)(44832011)(64756008)(52536014)(66946007)(66476007)(66556008)(66446008)(91956017)(76116006)(966005)(38070700005)(41300700001)(83380400001)(53546011)(6506007)(7696005)(54906003)(86362001)(110136005)(55016003)(2906002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZMPChB8p1wc4X/5auLxwVtQkevMR6aGDqaxeTtsfDB+1/0y2uVk2SGH8lD4o?=
 =?us-ascii?Q?/5NXUg8xA1WFrEpVX1Byzt4YShpoadeDz9Z1E2zlpyJdEHnJF73LmlfD3aKR?=
 =?us-ascii?Q?S0CltaElCM7bKFjMvouid1jSpAS7eR8SCbocnx4mC7aWGdgOJF230nUUt8VV?=
 =?us-ascii?Q?B8ChhAWX65IRdlL1t/grSRmTRZNYiMtlWY0o261gAblN3GDVI638Xap7B1Wl?=
 =?us-ascii?Q?9hl6eX5vgG0CAlnIFOw9OMw8EVKupHnQWHMDQ0ZYNM0A+Hs0C8fi7cC+o5VL?=
 =?us-ascii?Q?80EOFNSSK3Bl9xJiAFcScEk86uCvW44NSyrDnCyTgrGviH0hbFQPEN2IEXw+?=
 =?us-ascii?Q?2PB1CWFpE7eUGsb1WJC9TH6SHv36PZjcRLZHFuNCpK7EFzzVCFOYj4G3T4L/?=
 =?us-ascii?Q?z8XNPJsoquOLrDl6deA7DgDlpw+3o86CW3a7zVNRCGsTAEOo1F97Edrtxx/K?=
 =?us-ascii?Q?DvLn8L3D8VgDkIkDuCpc0aJjQS8cGC+AXOwCWDR3YV5unCsk6709C71lLUTy?=
 =?us-ascii?Q?VbiFmwvzE5yzB8bvOlkqTKF0lg7PjXWEqckhSXzbnfW/SQIpieQfV/dEMVrd?=
 =?us-ascii?Q?quACU9KAi4BkPHk8fb5mG15hDoagbFIoM9S+ncxBcic6eelJ0y+GhlRzyK9D?=
 =?us-ascii?Q?VCI33EinsEeHaEk0wLbIJXrfALCfS8vVst1oT6PNpmSEAgit6mOoyJLmqJs2?=
 =?us-ascii?Q?5BqzwZ+dJ+j1z4h63hGs5Iygb5y13mJoMb4foJ/bn43uymP4Um9AAwEGtaUM?=
 =?us-ascii?Q?XFqj7zF4I8KXUIJtWmPWE5oEZmwOCepht1Ixsu1PMF/BUMHrjgwu6mul0qD6?=
 =?us-ascii?Q?/KuSfbhjdChUz2Gc3YH5Nm30SGlbkERlTdHIaxWM5egz4LdAlCEUVe8LQ/5n?=
 =?us-ascii?Q?bB1i0BYIbbwTnR72ZyfU+4Shyobsrpn+rcB9l9mSOmQLNrtIZQjuqz0U/BbG?=
 =?us-ascii?Q?3WLTDo/lTyDIum2iuu7nCrYYZahx6x7/WKNmSl8iDQJugN9Ggv276g01NsIx?=
 =?us-ascii?Q?Xnp4063ZiK/hEJmNELfkq6tTxYKldqeHVT9hHHq76jOG3PVr94lE7ShL6LHm?=
 =?us-ascii?Q?7Eqa7605TD5B30EEasDZRsvNk3WDzeBlyqW9P8MfgQBGzWTa1wet3gJdexs5?=
 =?us-ascii?Q?3QjarNN3E56Qww6oGZJZVc7U3npbgnkEdUaF1zZt/4snTnLQIH1qVcqQCcoF?=
 =?us-ascii?Q?vnsQtDsvibAwXM8q+WgvXmeMvTywSmyMSdVUOHwZiL1cvKzulgPyuw7fC2la?=
 =?us-ascii?Q?6XBFg7/HLKkY3Isa5O0xaJD3WSWDeW+mYq0bIJYnjAq0BJmrYgVlzlVpKQq1?=
 =?us-ascii?Q?gVNHhjCudbTE6B2bdyqZibIhvla6r3t6b3Qk24N63C+LAX7BfBGFcZzEMfKR?=
 =?us-ascii?Q?YEHJfzL7KD+hKeszuyjx0FyNotMA0TfYpQyzWDzfZnXedab14g+dxQp2uZiY?=
 =?us-ascii?Q?f/+W05p8rTy9hhTOCsz4QRO6xTaoooGpJvWBkBMH53ASLMVMsTrSIwYCBZUJ?=
 =?us-ascii?Q?ggxD845P20PyArcQ/EK+5y57QTeDG0b08wBd6eE/49W4J8VLso4j50x2mHOW?=
 =?us-ascii?Q?hqycP0dSLKn+FKfIeqIC7CMSYffkGK1gVpACXkyEIvpVBVt+tYN9cAQSW/Hp?=
 =?us-ascii?Q?hfE1bvNm3p/uGPf1o5EabYc=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR10MB14666AEF8ED8B55B35310917F1739DM5PR10MB1466namp_"
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a8eafb0-901f-4796-20f4-08da85e55d27
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2022 15:28:58.2728
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PUXs4RScUxVtdCUjG59DF2gbG4eowxnxlXWlyrmwGRsbnFxGlVmucZ8YkP3Vq+kwqyY6GerOtcvVMK5qo82nm3oUPnrgV8AqqWOcyXtxA9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB4959
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-24_08,2022-08-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxscore=0 phishscore=0
 spamscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208240058
X-Proofpoint-ORIG-GUID: wElWSf4aubadKwk1cCuO1tAxMka1ET50
X-Proofpoint-GUID: wElWSf4aubadKwk1cCuO1tAxMka1ET50
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=fjOubru5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="xwwRV/bi";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--_000_DM5PR10MB14666AEF8ED8B55B35310917F1739DM5PR10MB1466namp_
Content-Type: text/plain; charset="UTF-8"


The kernel's call to unblock devices is only for setting devices to online if they are in the transport-offline state. It doesn't do anything if the scsi-eh set them to offline. The user space online code in your patch handles the scsi-eh case.

I hit the hang below and it should be fixed in this set:

https://lore.kernel.org/all/20211105221048.6541-1-michael.christie@oracle.com/



________________________________
From: Uday Shankar <ushankar@purestorage.com>
Sent: Tuesday, August 23, 2022 2:32 PM
To: open-iscsi@googlegroups.com <open-iscsi@googlegroups.com>
Cc: Lee Duncan <lduncan@suse.com>; Chris Leech <cleech@redhat.com>; Michael Christie <michael.christie@oracle.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs

Bump and CC maintainers.

On Thu, Aug 11, 2022 at 05:40:30PM -0600, Uday Shankar wrote:
> In setup_full_feature_phase, iscsid calls into the kernel via
> start_conn, then sets all the relevant device states to "running" via
> session_online_devs. This second step is redundant since start_conn will
> set the device states to running. Moreover, it can cause tasks to hang
> forever: between start_conn and session_online_devs, the kernel could
> detect another conn error and block the session again, which quiesces
> the device queues. Setting the device state to "running" via sysfs kicks
> off a rescan, and if the device queue is quiesced, the rescan will hang.
> The iscsid kernel stacktrace looks like the following:
>
> [<0>] blk_execute_rq+0x11c/0x170
> [<0>] __scsi_execute+0x108/0x270
> [<0>] scsi_vpd_inquiry+0x6d/0xc0
> [<0>] scsi_get_vpd_size+0x33/0x70
> [<0>] scsi_get_vpd_buf+0x25/0xb0
> [<0>] scsi_attach_vpd+0x33/0x1a0
> [<0>] scsi_rescan_device+0x2a/0x90
> [<0>] store_state_field+0x1b0/0x250
> [<0>] kernfs_fop_write_iter+0x130/0x1c0
> [<0>] new_sync_write+0x10c/0x190
> [<0>] vfs_write+0x218/0x2a0
> [<0>] ksys_write+0x59/0xd0
> [<0>] do_syscall_64+0x3a/0x80
> [<0>] entry_SYSCALL_64_after_hwframe+0x46/0xb0
>
> Since iscsid is responsible for recovery from the second conn error but
> it is stuck, the relevant device queues will remain quiesced forever.
> Tasks attempting I/O on these queues will thus also get stuck.
>
> For these two reasons, remove the call to session_online_devs in
> setup_full_feature_phase.
>
> Signed-off-by: Uday Shankar <ushankar@purestorage.com>
> ---
>  usr/initiator.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/usr/initiator.c b/usr/initiator.c
> index 56bf38b..6cbdcba 100644
> --- a/usr/initiator.c
> +++ b/usr/initiator.c
> @@ -1068,7 +1068,6 @@ setup_full_feature_phase(iscsi_conn_t *conn)
>        } else {
>                session->notify_qtask = NULL;
>
> -             session_online_devs(session->hostno, session->id);
>                mgmt_ipc_write_rsp(c->qtask, ISCSI_SUCCESS);
>                log_warning("connection%d:%d is operational after recovery "
>                            "(%d attempts)", session->id, conn->id,
> --
> 2.25.1
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/DM5PR10MB14666AEF8ED8B55B35310917F1739%40DM5PR10MB1466.namprd10.prod.outlook.com.

--_000_DM5PR10MB14666AEF8ED8B55B35310917F1739DM5PR10MB1466namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div style=3D""></div>
<div style=3D"">
<div>
<div dir=3D"ltr"><span id=3D"ms-outlook-ios-cursor"></span><br style=3D"">
</div>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div dir=3D"ltr">The kernel's call to unblock devices is only for setting d=
evices to online if they are in the transport-offline state. It doesn't do =
anything if the scsi-eh set them to offline. The user space online code in =
your patch handles the scsi-eh case.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I hit the hang below and it should be fixed in this set:</=
div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a rel=3D"noreferrer noopener" href=3D"https://lore.kernel=
.org/all/20211105221048.6541-1-michael.christie@oracle.com/" style=3D"">htt=
ps://lore.kernel.org/all/20211105221048.6541-1-michael.christie@oracle.com/=
</a></div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
</div>
<div id=3D"mail-editor-reference-message-container" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> Uday Shankar &lt;ushankar@purestorage.com&gt;<br>
<b>Sent:</b> Tuesday, August 23, 2022 2:32 PM<br>
<b>To:</b> open-iscsi@googlegroups.com &lt;open-iscsi@googlegroups.com&gt;<=
br>
<b>Cc:</b> Lee Duncan &lt;lduncan@suse.com&gt;; Chris Leech &lt;cleech@redh=
at.com&gt;; Michael Christie &lt;michael.christie@oracle.com&gt;<br>
<b>Subject:</b> Re: [PATCH] recovery: remove onlining of devices via sysfs
<div>&nbsp;</div>
</font></div>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Bump and CC maintainers.<br>
<br>
On Thu, Aug 11, 2022 at 05:40:30PM -0600, Uday Shankar wrote:<br>
&gt; In setup_full_feature_phase, iscsid calls into the kernel via<br>
&gt; start_conn, then sets all the relevant device states to &quot;running&=
quot; via<br>
&gt; session_online_devs. This second step is redundant since start_conn wi=
ll<br>
&gt; set the device states to running. Moreover, it can cause tasks to hang=
<br>
&gt; forever: between start_conn and session_online_devs, the kernel could<=
br>
&gt; detect another conn error and block the session again, which quiesces<=
br>
&gt; the device queues. Setting the device state to &quot;running&quot; via=
 sysfs kicks<br>
&gt; off a rescan, and if the device queue is quiesced, the rescan will han=
g.<br>
&gt; The iscsid kernel stacktrace looks like the following:<br>
&gt; <br>
&gt; [&lt;0&gt;] blk_execute_rq+0x11c/0x170<br>
&gt; [&lt;0&gt;] __scsi_execute+0x108/0x270<br>
&gt; [&lt;0&gt;] scsi_vpd_inquiry+0x6d/0xc0<br>
&gt; [&lt;0&gt;] scsi_get_vpd_size+0x33/0x70<br>
&gt; [&lt;0&gt;] scsi_get_vpd_buf+0x25/0xb0<br>
&gt; [&lt;0&gt;] scsi_attach_vpd+0x33/0x1a0<br>
&gt; [&lt;0&gt;] scsi_rescan_device+0x2a/0x90<br>
&gt; [&lt;0&gt;] store_state_field+0x1b0/0x250<br>
&gt; [&lt;0&gt;] kernfs_fop_write_iter+0x130/0x1c0<br>
&gt; [&lt;0&gt;] new_sync_write+0x10c/0x190<br>
&gt; [&lt;0&gt;] vfs_write+0x218/0x2a0<br>
&gt; [&lt;0&gt;] ksys_write+0x59/0xd0<br>
&gt; [&lt;0&gt;] do_syscall_64+0x3a/0x80<br>
&gt; [&lt;0&gt;] entry_SYSCALL_64_after_hwframe+0x46/0xb0<br>
&gt; <br>
&gt; Since iscsid is responsible for recovery from the second conn error bu=
t<br>
&gt; it is stuck, the relevant device queues will remain quiesced forever.<=
br>
&gt; Tasks attempting I/O on these queues will thus also get stuck.<br>
&gt; <br>
&gt; For these two reasons, remove the call to session_online_devs in<br>
&gt; setup_full_feature_phase.<br>
&gt; <br>
&gt; Signed-off-by: Uday Shankar &lt;ushankar@purestorage.com&gt;<br>
&gt; ---<br>
&gt;&nbsp; usr/initiator.c | 1 -<br>
&gt;&nbsp; 1 file changed, 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/usr/initiator.c b/usr/initiator.c<br>
&gt; index 56bf38b..6cbdcba 100644<br>
&gt; --- a/usr/initiator.c<br>
&gt; +++ b/usr/initiator.c<br>
&gt; @@ -1068,7 +1068,6 @@ setup_full_feature_phase(iscsi_conn_t *conn)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; session-&gt;notify_qtask =3D NULL;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; session_online_devs(session-&gt;hostno, session-&gt;id);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; mgmt_ipc_write_rsp(c-&gt;qtask, ISCSI_SUCCESS);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; log_warning(&quot;connection%d:%d is operational after =
recovery &quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &quot;(%d attempts)&quot;, session-&gt;id, conn-&gt;id,<br=
>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/DM5PR10MB14666AEF8ED8B55B35310917F1739%40DM5PR10MB146=
6.namprd10.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https:/=
/groups.google.com/d/msgid/open-iscsi/DM5PR10MB14666AEF8ED8B55B35310917F173=
9%40DM5PR10MB1466.namprd10.prod.outlook.com</a>.<br />

--_000_DM5PR10MB14666AEF8ED8B55B35310917F1739DM5PR10MB1466namp_--
