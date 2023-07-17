Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBLEP22SQMGQEVSIT55A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115C756BF8
	for <lists+open-iscsi@lfdr.de>; Mon, 17 Jul 2023 20:25:51 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-5667356cfcesf6229192eaf.1
        for <lists+open-iscsi@lfdr.de>; Mon, 17 Jul 2023 11:25:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689618350; cv=pass;
        d=google.com; s=arc-20160816;
        b=SWZtmarHlRNQbTyrIxeYyBep4t9s/sAbi7jnVIf59/9uChUTs5QVoTmJrCgM3lVE6s
         dymE5FbK+DA/hqJQcXXgMqzEkwr/ww8W2cNWIHyPVwXXP74YeDvpRTT+9SG3p7lLX1uE
         KGH84QmNRUnqGGCwzyTwU7BNrxoMYFh052I8h/3YGXo1+vXdEKy+3E/p1Rbf4WOsUUI4
         uCpuwdzjRP8B4PVnySy4SiJHy/dXhG5AJCIVPlWrzILQkVgTrtNwISABgH8aBYzMSlKo
         kAr07K9D0hks1ztZHhryiCXRxFDS4VYyoF+IBSbz8BcSWDg5i1StvPy0tPeCrX781oaN
         1z/Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=zziV4VHsBPaka3Oh342yR60yK4vZIrS7u4XTtbIKQyA=;
        fh=Jeh6z/1b6SkAzf60U/gSnHvaucHXzlqbUFzyHthDnvc=;
        b=zpwr3OymIn1wonPt2Pkqnb2Uc2bS7HyPEtI20uCAIjWBaPttMns1vQtExnwEGgh4uS
         3N34pt5MSjIbxFbZ1SUs1hiJhEPKt9dmY9J0wwNWaIXODCpQ8lMNQXlLcuSonwTUhwzR
         dQzAVHezOQHjvApTV1lC6CEW19PBgP33CMc64E6B2etCiZcIMe7m3eQsMEkgZfdFhOWh
         GGb1lI4WLQjF14cmx8Bs+nfSLk9hxIxt9DEoEG0g+d5kfAzxZ8JcXzuxvtlJi8c3B8gG
         f80JVbVfqGx50yBMfk8ovYTwHg+0pWHHyCn4qgzngmW6+wkrJX9d4AXLvALtj/9A5GMT
         Fo1w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=D+Av4U0D;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ViXD1YWw;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689618350; x=1692210350;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zziV4VHsBPaka3Oh342yR60yK4vZIrS7u4XTtbIKQyA=;
        b=mNIrSvQ36V5GUCk6vS5ityV334li6K6F7zkMtSewgVCVgWOg+jodWJQN9KlZ17J2o1
         Nf8iyKmIRAly9NmIo9JVc9molKBjK+xsVe6vVbC6jPP31CbjC0nILnOfCQfEA11grp+v
         GTRUh5Q9J+DG7urENTZTaq8gEe6Qcjtm4L47HrbC8hi6P9/Soc4cF13lux/oPRdOb9pv
         KaT4bGpJ40WZe4g4VKiPAm1XVwDcSbY/IaDeC+G/lSPPzPcDsTxnZiliBI6XMbNOOLJH
         WVu7Mrut+XkcDpLgUznBX4m/J1rWbecDh5y1Eaa5BaebBol7PKaPZQ4rFdFHQCxavHEh
         NWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689618350; x=1692210350;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zziV4VHsBPaka3Oh342yR60yK4vZIrS7u4XTtbIKQyA=;
        b=MhRMFL+D9+HfGIhCAtonpvTufUywq3AtEZyoQzXUrtkl4kwfPYKZKjc/SuIdnEqvX6
         jZ4fk4VP3rvPFXCQ4DKDBBSLGOQIMI8tzQgtA3qEGdCtKihX4A+Tv9xcq5JV618BMkfg
         uzDjqF8Rfxkay37BVsNxxKb/zB6woWfJSBRHqH8u5PjkcHdm0Mi4m8//WWOlYHNwyc+t
         lZRAR4flOx0kgIhwYl8uwUSL3ryUpBnmqCP8M05nOaABw2nH7ZLLun/2KmclBNCIMG49
         JPBi9C1qhtDyojZKD7CbBZs7rZnKjHs5DZoImT49E42H8QFnC7TZDuMWFqdjPBI67YcT
         fnFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ABy/qLZHRfDLuD6Jvcw+IA2DB8dIa+TfqqRBBnDrdmhTTYBDyvINZaUo
	/Htnw0V7vmblLDH3TT9LV70=
X-Google-Smtp-Source: APBJJlFFG6xFI+b/RLCmxep6H21CiqA8eEaF2kY5tg+INaNPLhNtRd7eHvx6/F8wW0yK15WbejhPVg==
X-Received: by 2002:a4a:3009:0:b0:566:fa8f:680d with SMTP id q9-20020a4a3009000000b00566fa8f680dmr4896355oof.1.1689618349776;
        Mon, 17 Jul 2023 11:25:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:3315:0:b0:560:bcd4:8c7b with SMTP id q21-20020a4a3315000000b00560bcd48c7bls2852172ooq.0.-pod-prod-04-us;
 Mon, 17 Jul 2023 11:25:47 -0700 (PDT)
X-Received: by 2002:a05:6808:ece:b0:39e:c615:949f with SMTP id q14-20020a0568080ece00b0039ec615949fmr12071563oiv.24.1689618347779;
        Mon, 17 Jul 2023 11:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689618347; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Q/pI22KgWkjjT4r5/9/pPS5Lviv/M599TCFVtyfUiEUbU+5HzpQKiSyKcnm73mU6D
         XLrrldbSiXxcjXOGoVf0fK8tNQNhZWPgK0yWGmQMUXNvJRzwzNEKrlBKBXQFRIwhBy07
         m1XQsIjE4DeYN2AhItxBa6DXvfl8JM1EfIWnoDeEHZcpt8GD1zGeqP0iQKp0oSigvpBT
         HNdtVqY9U0d5mB7Y7flHjrf0MV2qzXXEXgROir3RUAwhB9a1hy+y/EXwRxZBaz9GvhMT
         YF+NCr6jIiUFUq5HX0+beLfQKqjVPz7k4Rs+hdi1gCoOmBveJjZvQJnDiAsguL7AluGa
         InTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=YpweLP4WI2pLv7YkW5q5LbhZDEq7UMJSXOM6cyTQP1o=;
        fh=Jeh6z/1b6SkAzf60U/gSnHvaucHXzlqbUFzyHthDnvc=;
        b=tgRGnsNIEJxklv1DdZaGeJ8fUxaowUqjezhEmF+RRStSNqL2VLWkCZLrJo4IBWuPqQ
         8KfQuEU1IhX9Ca2xt2ko2OvpW0FJ2vXsv1tCTmIzk8mJ94+j1xEyFkT9hgzAZD01CLT2
         zO4Bhv9OnWplHROh317IuZrqBI1Wj9AhRdFEqqj9PqZgMDMdsss2NDfHIAhsu03C3DRU
         f4EPQxJ/NpqCZsSHBMY+ByXaa66Qb5C37yfRxVX3Wp/pcC6zBARq8F912ELmvqg1O1EU
         NP4iqoRuxNOJt0e+ANv33xqhgyDmr6WKvXKRVg0ye/XEQPpCMcivBKYqT/u113jFbQdO
         G/RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=D+Av4U0D;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=ViXD1YWw;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id k16-20020a635610000000b00563349ea16esi13421pgb.3.2023.07.17.11.25.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jul 2023 11:25:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36HEwt00030104;
	Mon, 17 Jul 2023 18:25:46 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3run783aqx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Jul 2023 18:25:46 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 36HHojBQ019258;
	Mon, 17 Jul 2023 18:25:45 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3ruhw4hstb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Jul 2023 18:25:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlfCvtlt2IpuvwgnpvARemihsHHhdKmbCBhgrxLXx5MZSrM1BbRU+bLIjQc4HpCPXNqtnyn9mkvIAG82q/V+kQq6AmFoyOWMdEJaQHMye2hcMCqA2pGRkB6l5/DU3phvCfTw71diQzZb9zczhfIF6TkyzSTF0Nn/Xkk1lKS+/JhowpSuOJGJaiTGPXjlR8DhO+qhz+4M/3038qnyLPfxne3Nr5qeB8tGaDKZSfBi0TKFt2y44GnktLAbn8CaR6F0EDOTyWO/LgSlfJOoAlxyNlJ2MqnQ0FzAtvHDUDLndt1X5fkgnMbkIHc3Av8SMs3a0MVIpHTRrW6hkJgX7OKBKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YpweLP4WI2pLv7YkW5q5LbhZDEq7UMJSXOM6cyTQP1o=;
 b=LVSsdCLB3maaikJZq0bgMlMTN/zRGtSFT+CCx9Zr/LnAnzLt4lBAkOP9tf1Fd5ZLVIsKbeHvnf4IsTkdm6foE+lQsVznocxXBGoonuZAeUzJRI4C/avGRXAoRn6XyIsiZQns4ciZTI8eFlqU+u+XvGzqqNOmGdTgwdiChsGqZNm9INGKd4EU1skjHmzoS+Ihy5E+tnTILzdhfSgU3JfW/+vlUOx0QPpSB9Re5WGvhT3Pcpjt06jWx4VOBINQjK6C8doe2mIJ5n1cT1anXuU3FeuDGK8i12nqz/mKyaN6J11CuQ0tAYaYeMGdvPu0I1OSO1tlhlpbX6KeM/+TZEG2Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by SA3PR10MB7021.namprd10.prod.outlook.com (2603:10b6:806:314::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 18:25:40 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 18:25:40 +0000
Message-ID: <5bed6236-0db7-37fd-3d0a-4f51874f9c53@oracle.com>
Date: Mon, 17 Jul 2023 13:25:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v1] scsi: iscsi: use kfree_sensitive() in
 iscsi_session_free()
To: Minjie Du <duminjie@vivo.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        "open list:ISCSI" <open-iscsi@googlegroups.com>,
        "open list:ISCSI" <linux-scsi@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Cc: opensource.kernel@vivo.com
References: <20230717092657.9776-1-duminjie@vivo.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20230717092657.9776-1-duminjie@vivo.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0109.namprd03.prod.outlook.com
 (2603:10b6:5:3b7::24) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|SA3PR10MB7021:EE_
X-MS-Office365-Filtering-Correlation-Id: abb21f5d-1e94-497b-54ee-08db86f33951
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W5+whm+HJq7v9qbQaa6anxhDxiQ9/Y+60+OiPzex5r1i+HkdVUCuUPhwFcjgeYWqSMpY3ZwwyBCB/ayqveYngg5g2aGy8cLDx3tc2dGkh5lcktec27Qk77jv5hpR4Y4czmgS+hkiMM/6pyirFs76rZLFdIe89HXCHOawRvCh4M1MMyLD0zKusq93soPLGc1n0gTNgAYnvrZDrpJx+nLd4E2xqnbh89BFCI8ihs+u/PBGzwIGix1J+S4oWHs46FJnEfC5NV47mSAQWrRZzA/LHek+ke6AcoWCzfZRmXXchNMfQCGK5V3ChIlWBdvLrneOyDvkiTPLxtLyV525WpQegM3Nt1taqcxBvJBou+c7jRZfNkSlksBf5nzNqq6tfi0CIIfh7435DKcLtOvPML5Oyr5l/1ROSGnO4jFWkd7VaoiHo9wWPH9DEASm1KEjgG1jeVCXU5dMEOAvb2DiSkYLODGBDk+mlqyD130sparKsRXQpgirnMiEemyCQ4+2q77obRIRo8sVIPoIi+j4TsvRq4gonrKKOmbRSlHhhk/+wOrgsyC6C8sC7xCU1C82XQkNcur3fAEV8iL6u/x9h66OQdf181HJKf7ZyNi8b2H/fD4QFXvuBtYEfnNqs7WAo7rZHFW3MHbB7IvoQocmMwsvQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199021)(31686004)(83380400001)(478600001)(4744005)(186003)(2616005)(31696002)(6486002)(86362001)(26005)(6512007)(6506007)(53546011)(66946007)(38100700002)(110136005)(41300700001)(2906002)(36756003)(66556008)(8676002)(316002)(4326008)(8936002)(5660300002)(66476007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1dIbloxbzdpRVFVU09LcDZxTVg0VmJUNDVlMlJDL3BUZ0VMYmt3TWhkZXBz?=
 =?utf-8?B?akxJTmhlUlJrTDdmaHNMaDZDUUdRVENGbmJBRi9VNjJzN2VnNzJnWlVFcHVY?=
 =?utf-8?B?RzIvNEIwZ2lZOGlpNGxQdVhLS2ZGbVJFVXZybmtEb0p1UDl6TGxmWElsNkE3?=
 =?utf-8?B?NTNxOXNsSnFscmF3UytJSHZnb1BVemh5akRzakowZ3A5MXBoK0c4ME1XbW8z?=
 =?utf-8?B?bVo2R2hqYitxOXlHN0xrQmdpUFZqYTcya2Yzb0RNNW5QTW9HY2tIRG9BeGVH?=
 =?utf-8?B?T1NNbFd4eUNvVHZienh5eGh1YVRzdGlIRXhpcFd3NjM4RW5TNXZMOVA5bG5Y?=
 =?utf-8?B?RldNc0JiSGlxQnFoeGdHU2FpeVhIVkMwekI5eUljWTRoZGpjaGsrY3lnNVhD?=
 =?utf-8?B?UzJQRm81SGVacVNJSGpmeGpUM3l1d00wM21RckluQk52QUJ0dEdMbDBaSkpw?=
 =?utf-8?B?cVJYUzZjejdyU1FUVnhwZzJoSjErd2tuNG52STNhVDZLM0FuaC9VbW53c1dO?=
 =?utf-8?B?WlkrM0w5RGkrS25OUitlSUkzWU9Hd0RSUzdwcXhVbXF2TVZIVkE3MXlEVUpD?=
 =?utf-8?B?RzFhTlJCcmJKTWlpd0RVSWZ5T1JYcnRvQVJ0dEZ0T0NPSVNzMzZBTUFIWTlP?=
 =?utf-8?B?ZWVYSWF4U1dWaFI3S1FIN1VQWTlmT2lxMTM2UWFKbURPQTZZbU1tZk5NTmxE?=
 =?utf-8?B?V2xnQURWa2JCaVpoa2RhOTVwUXZvZGV4ZEE5VDRuS0Z4Z0FIME53VVo1ODJY?=
 =?utf-8?B?Ujh4N05wekdldHBjUVpXeHUrTmtZeFZFUFEvTTZUclJsT1lsM2tuMG9Tamcr?=
 =?utf-8?B?OFRSVG16Z3pVOWR2Q3Q0T1dpOEErWDVyUG5YUVVqQnkxeEttMzJLdnpSejZI?=
 =?utf-8?B?QWtrOVpTdnEwMkkxeWx4R1FWcTRpekIrTXNVZUtXcDdIbmtnUWdQdGQwUHlY?=
 =?utf-8?B?d2ZkVWEzL0NqbjBGUUdiUGJ2TGxWZXVSdXZZNnZxOEZyalIrUXU2Yit5OWph?=
 =?utf-8?B?bHJHSXpCaWxRMDZPM2p0b1ovOCtOOWdjWEdocEx0dWMxTHY3RUhLalFtc1Fk?=
 =?utf-8?B?c2o3SU1LVmtaRHdkNm1kT29WSDB2NWVSdEpNbys5NlhvSlRXcmVDT1gwVk5X?=
 =?utf-8?B?RmxqVzlIeFBUUlVaT2NONkVUcDlUaGNLOHVRQSt4OUc0WWJYWGxYbi9XMVpm?=
 =?utf-8?B?cjh3ZzNaOHJtSlBCSVpiTG1MNFJHeW04N01UTFkvZ0ZnY3MrYVN0bEwyay8w?=
 =?utf-8?B?WmtjL2RjL2ZIdGZCQzI3cDJreGJpWWd0M2MvU2FqN3dSQ1NQeWhSU3NGdzNp?=
 =?utf-8?B?K253TTZJOGIvd2Y2aUUycUVpSnY1ZnBZVzRSR0d4MzFLcmNQcDNWQ1VxdzlD?=
 =?utf-8?B?bHdtbEQrd2RjV3h2bEY1S3QvNW1ZNHh5ZFFOVDNMb2Ewa241WkJWWVQ4YUIy?=
 =?utf-8?B?bndTa2lNOUhneXMvNmtSWVJvd1VWOGh6ZExaRFoyNHJBTkNCZUdpeFJVM3Ez?=
 =?utf-8?B?aU1PVkxmMnVQMFNUcFRVb0pXZlJXeTRWZ0x1RG10VS9YMk9la09seTdPejZn?=
 =?utf-8?B?OERwR3BtaDk1THIvbVllN3g4MU54dEpJMXNoM2h6VkxPWWRXd2pUK0JaY2Fz?=
 =?utf-8?B?U09iVWRQcEo5d3RzU3NkdUxsMWtoYlBOdXR5QjN5WFR1dEtwVGxzRTZBV0xU?=
 =?utf-8?B?Zk4xSXJEa2JEbkJCenlJSEYrM0xUbFlJTHRqR0FJZzdyalNCQjgvZXZvT2FS?=
 =?utf-8?B?dk5iRlFpUnRWbG44SmNFVkVsOUJhdVdjWXFXQTBJbkxhTEZhK1I1TFJxRkxz?=
 =?utf-8?B?S1dtUTlhd09lZHVoZVZ6aFZ0NmRxRTBXSmVHb0Z6UDhTMGhEMjBQcGRmdGky?=
 =?utf-8?B?RWJCcG5qQ1FySFhNWDNhajhIZkVSUEpINFhDU1JUdUc4cStXSGdiSkc5VTMw?=
 =?utf-8?B?NVh2QllZd28wNmxIY1hVQlMxTzh6VWJqUUtlTS9jZzgwR1FqaUFGZXBONjgy?=
 =?utf-8?B?NThqT091aVpqTyszTjFBZHh2ekZxTUR6RllwWWxIQk9HK012L1JiMnpmWEt4?=
 =?utf-8?B?UXdTQWFwTnlOd1NXdTFkYzNkYUFTNnU0SGNLcWE1Sk1kRUM1ZW1PQjh3RTUv?=
 =?utf-8?B?djBHbVl0UkkxSWtvOVBQY0VQcFc5OEh0Sk1MKzExelBZTEhuVGxCcDhUNEdX?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 2zRpEy0o0inQSlmPDKiMqIKRf4CXCONwjUqu0GZNZLrr3TgWgXHRbeMkR2KWnCPdRgNC6KXiRNLvtllLtReku1oaeZDB84gveTGUXWBsN5wH9MBfT/8YdrwZ7LGXqrsRxJn3AZItuG2a/vWUjI/VsBFeMK5dGIIETRCvDKCqUSkVdtDDo2mpNyl+AQ0DkLDcXQrWhC+31bW7K/heD/1lRhAlqKNuPx48DCUdmlO1OXvYxINbrWmHc00Z37XlF3B1ACveD+HW26ajnON0ylacnULuj3xiKYaV5SV0L2DJK+PIwc8xjL6mOXN46kVrm7JvykoMOUh2ycxnudtPoOcCsAAznKYfUjIukEnvBjY+sh0hXeO6sHIpahosHRrWDYTMZe5ZFVXrqnOxX9eMM6Ny3ZNjZXBOKH0s7CnWr0hNlyJptvILr7zxNgT7OUj5IN0oWjhAtmYllNbDtP/R9miDnfFxkGcKxm+yuVWiASIojzUB6RecXY0XBQkDxrZ4pVsV2uR6KFQZM9OiyHrLsshMFKijT4qKhPxL1NLlAngev+AjFJ/sTW2KbiPfkEPgHD4NGqDqeo/uz/2ANcxESxXYSeKnhJM8gROXNxUYYSa3cWvcVYZAxmNJXclbmMBGRv+XYtsGbKbUDtvEs3RgYLgrPgbkjEPGrpj8nuLCmgW9Z4WTZ5f2L/z68BJTqHpopwCPBjDdExABc7zZLbA6KKiti30tQOQQbumJ4B6qRMCGebVb/Zw916KgZjyOuwa4hCvgfePLvOfVUwBBs7dUSSILF5FmE4wXKbinKdV77c0YCHlclABYoR3TMxseSHSLxFYyJKdwNlLb3Jy5j9cO27D/u3Z96wsuw5B2p2vP7zURUVq06/HERU4z1Cdn3fe3eX5tkzxfgHbqGiK6qBzlBx3rHWELBqZllerJHZjympi2duw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb21f5d-1e94-497b-54ee-08db86f33951
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 18:25:40.1170
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y4+u8V8eX0qMP/7lv0Wyn9K0igCst0cbig8J7Nn90LNnsWhA7suUcZFKktMXQlQ8zTB9v+iKPvHLeh3INq/Yp67NO0esg8nk4XtJkA3cM/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR10MB7021
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-17_13,2023-07-13_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxscore=0 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307170168
X-Proofpoint-ORIG-GUID: HnYPQ9V3sY3m_S9y33ZEgleFV2REChzG
X-Proofpoint-GUID: HnYPQ9V3sY3m_S9y33ZEgleFV2REChzG
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=D+Av4U0D;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=ViXD1YWw;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 7/17/23 4:26 AM, Minjie Du wrote:
> session might contain private part of the password, so better use
> kfree_sensitive() to free it.
> In iscsi_session_free() use kfree_sensitive() to free session->password.
> 
> Signed-off-by: Minjie Du <duminjie@vivo.com>
> ---
>  drivers/scsi/libiscsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 0fda8905e..2f273229c 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3132,7 +3132,7 @@ void iscsi_session_free(struct iscsi_cls_session *cls_session)
>  	struct module *owner = cls_session->transport->owner;
>  
>  	iscsi_pool_free(&session->cmdpool);
> -	kfree(session->password);
> +	kfree_sensitive(session->password);
>  	kfree(session->password_in);

You then also want kfree_sensitive for password_in.

I would also use it for the usernames then too.

>  	kfree(session->username);
>  	kfree(session->username_in);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5bed6236-0db7-37fd-3d0a-4f51874f9c53%40oracle.com.
