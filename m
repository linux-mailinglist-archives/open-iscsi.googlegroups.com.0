Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBXFD6SNQMGQEQPHLVSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBEE634370
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 19:15:59 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t15-20020a0568301e2f00b0066ceaf260d1sf6427517otr.3
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 10:15:59 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669140957; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLZpdwVG8hYgt1febqLoGKq+/ItGEmpdEk45JqQpwE1cvW4/kysrG0GnQZdLHOifGz
         8755FbuBwElNhaAr8nqdZ4J5TOsSptrKCGn/7tjELsdF8Zfn3OqRRZpblHfMO+4IlzhK
         BFwtHlGG6j1ZFx0L0nPMUwxijePHnftq7pasiJSTO1nS2iwlmC+OXc9MGL9wM7R/nBeA
         Qc00kH7IHCN9C9VwLkza8YtfHCWK/k/Te51AE6WscRdiHhv8aovRAHBtcVzJA/UON259
         PBXuVKaNiVCa4rloiOdRP5RrBf7beOuwWi+6nMxpTWpkGsdagBN9CJFCTGK+7ii5/23A
         33YQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=CBD2ZbxUbXf0B+Eb0BrJAkWTD531FLcle/+4LJzIQ9s=;
        b=jxXhYsx33cD8iZ4qmPueSd6VuVGh2mIxaSGq0NrKYFwmkuikywK9eE8kiKMkHKZK1m
         WqsvN0orcg233Pg3umB/0kYPEI+OUW4cxcFJfSEpJlShsVUoHXe/nPErGGu7CBdNYMJK
         KPfLl1Ycv/yUEN+ERC7ah+2W1J6egRonmIY9rdzzqrlFoefmJhdABUKR1DXwaEdwFXbm
         D08tRkg5grmtsyLyzKEAyZxCdCFvY2w0y0s0mwaUQxGl97LqpNXNNHJbiH8rrdAxCgHJ
         lki5L10nFZfshHYiFBtFHhi7L8KELm6nmmCWjqQ4iYWrLVbk9zzXaTKYNzxYMDjcQvFv
         xm6g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=kHi6Klah;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=XkEZyOHE;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBD2ZbxUbXf0B+Eb0BrJAkWTD531FLcle/+4LJzIQ9s=;
        b=hPkf55849W/zbktcdczcqeBfyZCBaBd9Zg7vzZwCjgyiGn9sxCvnkce7/RP7qKaWDl
         iO1X7pTKHqq9aOcH2W7JYu1mMHEj4IJtoLvgwohElEnAhge9qWftMIx0Yqmp+0POQZ9S
         XTICatyRI2ZgR6sg9sY+YjqwPNYurk4GKlfhxC+hE2w+9UYw9HcMYfziMhcmjVCc1TOh
         0ECVR0WemxL4+hwz0iQbfb3bmkmuKSXZHxKrvSuxRpIPQ9rSPsljckkJx8CSsfzba/4Z
         Vqwea0zO0oDQejaNzKf88iGy5D9WQcI01iM4IZQ+slot5BlR/SczdLWvdLe1AMB8T6Jt
         QAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CBD2ZbxUbXf0B+Eb0BrJAkWTD531FLcle/+4LJzIQ9s=;
        b=Wdisg7BxsnIdjXUZL1Egybn5vBgUY3JFMyYK23CqIKBWR1ZI/ndVZJgC7uH3VE6KVf
         vIozjBLGT6ftJ+f0KQn0Zawz4PJnImpr5hoGTDh0HazfpKj5IRKnMU+GWk+W0dnUMvPC
         ogW4DancFunPt6z7vwTAiJWrYence3/lQPgTxwYWBFhFwYpay6xbHBV55JHUaf+gS2+F
         wNYSaKyGnqP7r9plYW1G2I3++164/ryYQJgO52GtA0QvKZWxx1StKw9IvffMRC+0v3kU
         F4yec4B4XVVv9kUvKb0CVyoRaRC9M5M5RDb8gHkkOHlAkqTrWcUHscmp4XotzAIZbwSH
         3mvA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnYG4jObU0n8pgERMMplk6qq0C32nCIX+9cdzniTQv4mIysNNV9
	vyHi4QSV26ghJMcDTRLbEvg=
X-Google-Smtp-Source: AA0mqf5RhXgvwXMlimeeMG0V/qxFPdu4bdyf0bPnqtAydq8n39LZCdAQD7f2YN5I1CKaiCi8mIcpmg==
X-Received: by 2002:a9d:7986:0:b0:66c:7f02:4ecc with SMTP id h6-20020a9d7986000000b0066c7f024eccmr3942341otm.47.1669140957772;
        Tue, 22 Nov 2022 10:15:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:3a7:b0:35a:9ab0:cca9 with SMTP id
 n7-20020a05680803a700b0035a9ab0cca9ls4452604oie.7.-pod-prod-gmail; Tue, 22
 Nov 2022 10:15:56 -0800 (PST)
X-Received: by 2002:aca:a98d:0:b0:359:f8bf:a32e with SMTP id s135-20020acaa98d000000b00359f8bfa32emr3648667oie.64.1669140955950;
        Tue, 22 Nov 2022 10:15:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669140955; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8lXE1bBwGPbLr1LBa6mSFZH0xNMQ4JPlg8a2FlQ2c1za/vw531N+HOqHXUZfiCgBe
         yaGeZAgO41Y+HF25MyooPKT+i0NjFYsArxuoDFnlRjgLPsOfS/HoagDCHkE9xktP/7SC
         gtGzIYHoCRt9Vzan8CasMu4Ydywy3ZvvUyD2WBDqKSYtlu12jHV61hyQ1BRhc513dfnh
         nZ6sq+iahwRNQ1kB5K9pc+6R1alt1Hfg+Nsmr6y/vOuWVDMXPSRWWp7kQoLuNJzL0qDn
         HIgHxsVoQSOKFiciFKS28d95yIHUnqZNHIC7f50fPZ2w0/v+lzrj0Mw0zNjDxLLEDv1g
         TU9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=JU79RDobFR/ZvLWHlkINpqhW10DCAMHBv2AN2Oqf+cE=;
        b=0gfbu1iwyuTQh5mGdF6O1OnXx3U8W6L2TXGdhI4qCm2sppSF3L/m1O+75G8oimk685
         7vyA1GeMnsxSOzL0yxSm+bKEtIgXF76yZG9fcDAQj+6xFZnlOLEb04E7/UT8th0WxOmB
         SDeTirIf+MaOPk27gCxCu+mxK7YhBxutoXtpubdF99bJMwKRDX6142FW0zJAe+WEidIG
         XMV6h0QcF7/+63YUa8wUCkZzlE6RvJS4E13+nyxc1bgs9WFRqM2oQyrbILNe5qzbCoCq
         YOdMzhNHcKnXPXuPS9Vs1m4Ve3w+P0fztPz6T9w3Db6JZ2iXUojTF/J6S/ot6PKSUU07
         TZkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=kHi6Klah;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=XkEZyOHE;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id b37-20020a056870392500b0013191afecb8si1160596oap.2.2022.11.22.10.15.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 10:15:55 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AMHoxqC023069;
	Tue, 22 Nov 2022 18:15:53 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m0afr4gkp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 18:15:51 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AMGWwYa007455;
	Tue, 22 Nov 2022 18:15:49 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2043.outbound.protection.outlook.com [104.47.51.43])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnk60d5t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 18:15:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2JmUH8RH5ZtJw1TXVvl5IoMW58fAecH6nFFliWPo6IKgAanyQRsQHdVjTVFhPWCN0J26onurvroL4HZ52hu6uvCdK4iMNFX5t1lcUknZhlqmwk4s02IPvWs5y7fy//vaocDwT1Bsls4Bk+gKvcnmNUMgWWmujbO3zTi6+KiUObe29nlS3aFdPjW0SrY8J419TGvtBJ+2TRk2KwIXKeJ95rzEywiS4iPhNqB4XfQcI2/WPb54xklkpxIOU4+0Ep1RPFGxIeaAS8PBNbZK+GUYLBA9ogT/3dLB3KrJSnHtQ5q9kvS1LNpHhEcJXZ8I2rPvsC/CDbDYmL1G88mhHYvWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JU79RDobFR/ZvLWHlkINpqhW10DCAMHBv2AN2Oqf+cE=;
 b=eOXRhU1Eo3KEITF3TBjczqRT0GfYl4iw+dURGDhopMjjNqQ+lU+oWPB3YJA1lU44pVF21UCuJ9aVWDe4thZsAdtDAHjy1Fti8hWNLOAvM5ddGrvICi/3glMn2LT29SzrcivXLtfUe085JKufShL5MmdkQWE4BQpBLaor73YqwtYrQYLM0lv4yk+IZ8PMgGOFVN3T0IjME5Lpu//CqnAM1/GhUFIPbxsMtma98tNHEsLdWyDiqIO4t63/JfEo+SipM5XPPksCT5ETfe08qEFL7f2DdpOCvxf1Wg9n+w//7TsIPCiFNauqyeyazVuuTqlLpq/AOh3gejvH6+jMZtB6Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DS7PR10MB5294.namprd10.prod.outlook.com (2603:10b6:5:3b0::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.11; Tue, 22 Nov 2022 18:15:47 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 18:15:47 +0000
Message-ID: <856ccad2-19a4-32b4-b41f-5a230a55ee30@oracle.com>
Date: Tue, 22 Nov 2022 12:15:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
To: Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linfeilong@huawei.com
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
 <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
 <418c7f6f-0bc3-45bb-2abf-e866df6f4b62@oracle.com>
 <CAOptpSO6=sUPUwgj1og8088djiNA=Bw9um0p024L=0Gb=-ja5w@mail.gmail.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <CAOptpSO6=sUPUwgj1og8088djiNA=Bw9um0p024L=0Gb=-ja5w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR03CA0236.namprd03.prod.outlook.com
 (2603:10b6:610:e7::31) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|DS7PR10MB5294:EE_
X-MS-Office365-Filtering-Correlation-Id: 345885de-5bd6-45e3-8127-08daccb59406
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aeOTKU9YNt0xa6pbBZA/wxHNcSbgrpn3UsSYBHakee6tu02ccsflDTu6zn7YZe3m4c8gS6I2WNZreP1ik9blNH2edkMeJLNnzAuJJB3OgbNxEltgRV2rvySCwGc2ttUKy9ujwghsnh4y+SEl9oXGH4JViZTrjslmu/Jg9CbPpoKZsBDQkKWXKTEo1JRWBu7bTapDvS48JkG508lY3K36vhMN+I9l6SfzElDDjVCzbvwi09GCMuczu67iJ16xQElt1wVCcI0HIQ/UQvH+kcF0h0K8J3tcDZ64VkiDPLrOU6GybEO5WXh9OlS+P3oT2ko/VqU6GfefjdS1I9KAYdBcP+XqB2cJdS0RgAOJCBsN/QvTW1nW5p+hT+x7G5TdSynwEn5iWO0FQ/wTWfNOOArkR7LSD14favhGC48BKx2vJOxIABbEdW0DOnEppLwj71SSuQTzJ2pzDogxAU2oBjw7Gz7CNqnB+ePTatSJX9PUpw19xDJVYOQMcTq5vhnHGZS5iPmt8AvZ80aLCBgRjjoOGnZFm2n2F8JravATQYa0xnsCfUGazvabc/d35IahgReqDoXIxsEteYbhMmpvCwO+R/Lp2X45rFD78T9jagpGGU/hqM3ibR8datOjUj5zgxSwdlKDt+IIqlPcRxNhHmxW60ZuBtcJyk/zbnQkHg+i7JF7Pk3unAXz7D6Zixg2OR2ffS+zzkR9xvTABXzCBupacCuLBplc9RERVA6Pq5oDaGY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(346002)(39860400002)(376002)(136003)(396003)(451199015)(6916009)(31686004)(54906003)(6512007)(26005)(6506007)(53546011)(2906002)(316002)(2616005)(31696002)(83380400001)(86362001)(186003)(4326008)(38100700002)(36756003)(8676002)(66476007)(66946007)(8936002)(66556008)(478600001)(5660300002)(41300700001)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amRkTy95WUs5anJPMlhDL1hjQWxQa0dLZkI2Skg2KzNVRVVYNlRmc0hFL0lq?=
 =?utf-8?B?UjVDNmU0ZkM2TmZYV3RudTYzZWd1K0FzaVRHekZqalVKNndoKzkwMjNWaE5D?=
 =?utf-8?B?SzFWQXpDZHJCdGViMVVHdm9PNnBOODd2ekIvWnE1ME9VclVZSVJVRkdZQjlr?=
 =?utf-8?B?MUdmOGkwdHFpT2V1dHgwTTd2by8xc3hSV29jZEl1UzdjZmN1U014S3Z0azJE?=
 =?utf-8?B?NTdtNzdINEZ2UElYSEpaSlZhVERVUzd5VTZBeldDQllMU3RBeGx2bGJGUEdz?=
 =?utf-8?B?N2M1ZTM3cmFhWXRKU0kwcGFsbVZvQnYxRWVoQTFsYUtiNmhsYVhENFJML3Bq?=
 =?utf-8?B?RkM1N2h0UDJVOVhyQkYrK0Q3QjJ3bW40UjdQUHFlMjFLbFFSczY0Qmwrak5V?=
 =?utf-8?B?ajRxdXlubmtyTTY5U3hYNWtnNHFsRWRzdEhla0NQaXo2MWVXQTg4dnFzOTJq?=
 =?utf-8?B?VjhXazBTZHRkUmxlTm9xckFzbGZjNmNzNHhvUFVKMmt6bExKelpNMXE0bnZT?=
 =?utf-8?B?YS9HVG1TSG05MkVwdGNqME5jYk96cVhJYjVBNkorTlMyWnAxYVY4K2YwSkI3?=
 =?utf-8?B?enEreG82SmpRejJqck9YVUJ0M0QvSDdJcG5GdlZXUnI2SFFWbmdIaUp6Vm80?=
 =?utf-8?B?WFVxUm5OeWcvV0ZtRGQ0VkE1MStHM1lHOFowRGNWNmVRMzFtaVAvRU9Ca0V5?=
 =?utf-8?B?RzlRUVE0dmdMUkE0QmVzNmpYMXVlY2lwVDZ3YThvaXM0ckxLRW5qUUhJYmQ3?=
 =?utf-8?B?UmUvT3NNQ25XMWJ2MVNoRzFsa0JGdVZpVmJSVGU0QlFCNzZFUmlOOUFWR0ZI?=
 =?utf-8?B?NEJGN1dEZXFabHFDNGVkWTdyMHVvTjBjc3Q3SUdKbWNWNTd0QmNtSlpEeWtK?=
 =?utf-8?B?UmZDaWYwOXcybnZ4bGlpNHY3ZncxMHhEM1k5K09STmZLS2FySGV6bDdDT0RQ?=
 =?utf-8?B?NktTMjZ5VXB0cC9NZjB0Vk10elRSdUx4bXFFeGgveWtxTzNRUlBkdTJ1SDQw?=
 =?utf-8?B?eEkzczNQWnhRQVc5Z0J5UDNLY3JLNzZMYTlMRFdmMHpvdEJGeXd2Z0hSOVp0?=
 =?utf-8?B?RzhNMndLRVhtd21CL2VaUVE0L0pqaHp5THV5RUxwUG1iWFl1MUpheXJPa2hM?=
 =?utf-8?B?TFRReDBHSnU1S0IzVFo1NTROazdzeS9BRmJJTGhJSGhVakFZQjhwYzAzTE9z?=
 =?utf-8?B?ZGM3KzBrZkNaRmhQUWthcnlpNzNHOFgrVmNuNUhGRGFyT0pRL1UzUXJyMDZ6?=
 =?utf-8?B?b1RtaXNHTTh0SFQ2ejQwS0VaRXhYbkZzb2N1K1ZuN3ZLSmRzbHoxLzhKY1Rk?=
 =?utf-8?B?elZOUVlPeW9mK3NReHVydjI3MEZydytqbEM5cDExS0xHMXNQUWJwMkphaU5v?=
 =?utf-8?B?TFl4MVlRTVFXMkVHRC9yb09HOWM3WUkrN1hkWUFYN1pVNDVraThUL1VqRWd4?=
 =?utf-8?B?ZENJdXBQazN2NVZKdXQwR1VuenFhUXhSQm9IYzQ4U3NIWnZsbExxNHRwY0hH?=
 =?utf-8?B?djNucWV0cHhDN1NKT2V5Z0Y4blJRdHJva2t4VURNRnVuenpGeGE5SXVuZFFO?=
 =?utf-8?B?NWllZmFOQkZSQWU5VnpaVFJHTkhZZVdiRWZ3THpGTnE4bW5PL2xPU084ZDBN?=
 =?utf-8?B?SXRHakp6Q2JSQlNPRUtaM0FIcGlaNFY0Ky83eExybDJXL2loUlc2cGxNeVJx?=
 =?utf-8?B?WE5QQnRJTE4waHU4WWtOT0NReTRtZjRybUYvOWF0Z3Z1SVV6TGhEWkNQSUVS?=
 =?utf-8?B?ejZMRFBDM2RwMWJ3NDJyVHl1T3ZUL0pYZURtRDFQR25URmRNSGxnMDliVkVW?=
 =?utf-8?B?K0tJUUtOTXlCcFhBNVpneTkrUEZvVzliNWtXSnY5UzdQMDAyTnVrV1NFZ296?=
 =?utf-8?B?Q2hhUG5RUWdYRUVaU1J6V3V5TlNaZWVSQklpWUdtREZ6UWxBK3h3V25ibmYx?=
 =?utf-8?B?ckN0Vzl0M2lyTzR3Rjc0NllsR2hyamZlT2VkODRnbnpHNjBUMWoxV3JuRGZn?=
 =?utf-8?B?akVHa2FWSzdXQk84MFBoRmVUdmlXdmFRdzRQZ1B3R2taeFZqVTVLQ3M0dThI?=
 =?utf-8?B?UzRDWXhwSXE2am4yNGNhS2pxVlFBU1VLcVBHQmljdXF1ZklQeFppcElTeG83?=
 =?utf-8?B?YmhJNHIyS3YrdUVDYTFsQ2haazRJdk81UmFPZGlZK3J2T0FRZ3BDNjVZS2Zx?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?azNidDI0K2RvRFNtR3Rjeks0L2paakN2K1h2c1F3QmhZVFloTm1sSTMyMjJT?=
 =?utf-8?B?SjBhYU85YTR5VVRjUjR0Nk1wUTY2MHV4RmJheHNEQUI5bWdpUkplc0J4ODBV?=
 =?utf-8?B?NG1rYXlOOGlaQ2QrL1g0bWpzdGJoODBqbld4UndCejZDMFI3OGExQjlNdU5N?=
 =?utf-8?B?NnMrK2xxUEtMT01LMjJzLzk4ckhzbW9rUUdIUG9qMnhOWlVEVk5NblNwMEhF?=
 =?utf-8?B?NCtueU8rajBQbkNMRDN1QzFTTlhyUTY5YysrL0x1bW5GSnhXNnQ1NFU2OGxX?=
 =?utf-8?B?MVkzeHdGZlNBM0pFTVdBYWV3Z2lQUUVsYW54dnFhVlJaSG0xWk12SEtjUkVE?=
 =?utf-8?B?MGM2RVJhVm9kUysvampaWVdtcGFTaFllKzVBWUE2dGMza1BBUEtEVktPM0pt?=
 =?utf-8?B?R0tSNGFwQW5KdzNNVWF5cnQzU3czT2o2V1A1NTVWZ1pFSXpsTGF0QjJQVHBR?=
 =?utf-8?B?S1FYY2lTQ0RMeFZLQWlHMHRpMGdpdHg2bGtKTHl1bzFJQS9HUGdDRGlSSXIr?=
 =?utf-8?B?anExWFFBVlFHOGhuTHdwSHcrb1MxMVp4Tm4wQTBCbm9NZm0rQS96amQwYjQ5?=
 =?utf-8?B?NVpvakFCNFRoMjdFbFgrQS9vMVJtMXBXRkFIV2daZW9DMStLNTQrcHNseVpl?=
 =?utf-8?B?YjVoblZaWDJNQ05MNWtGeWpLYS9Ja2lsa3F4blN5SVdlM0VORzlpSjJvK2xJ?=
 =?utf-8?B?a0JhWWw3Nm1RZ21lNEdueXM3ckw4aTNUdCs5dW1oYTBuVDAzK3dVMWZxMjQ0?=
 =?utf-8?B?OHpxSlg3SnVGUHlyQWpWNUp5amVQSGJ4SG9EU1BBSDcvZ3ZsTWxOd2tydU1s?=
 =?utf-8?B?dVUrNHhKQkJXOE1XVjE5MUxicnZKM1ZDTzN3dzdOaG5NL0o3aFB1N1huanFT?=
 =?utf-8?B?TDY3RW1ncmZJRk1weksyYlNqTnpNemk3Y3V5VzBUY1c4SGpYcDRHZjEweC9q?=
 =?utf-8?B?UTA3UWNRcXF1K0hEUTFHVDdRTzZQU2J1NmlYbjVKc3ZVTFBmcDRBazN0OVh3?=
 =?utf-8?B?Z3lTSUE0endUT1hUaHpHWGxtRU5UdlU1R0c2dWdad0g3YzdqcElDbkFPcC8z?=
 =?utf-8?B?ZDVUM21ScDRqOE5qOWJCb2wxcC8vT1FJdEJxNFdYZ1Y1bEI4QmlyOGhIN2pq?=
 =?utf-8?B?QSt3dFhzMUhnMGRTQWxQR1hkYUVrMm9zUk1XSVM5UEIvKzlodFpQcTBXV3pO?=
 =?utf-8?B?OVNTUlk4Wmh2YmZhSHFaczRJR2NqWk5SMVFpaFQzNndpQjhiME0xVDFJNnh5?=
 =?utf-8?B?K3lDUVdCc2JrcnZPMzRlV1dnQTFBY2FXNytodzAvdUtnT1lMZnhCRmtLWFJD?=
 =?utf-8?B?eERGeWo2N043emRIUGJtMURVRnU3U3M2UWkzTWg1VUlrS0ZMVC85MjA0WmdO?=
 =?utf-8?B?VHRzbVg3RkNOMXc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 345885de-5bd6-45e3-8127-08daccb59406
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 18:15:47.2979
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8P5VOQdv5gdYMagSzuBoGErheHh5naT6/3ZXLm56imLr8bY1bDlkkx9IwxwtxX6PUc+PhQiIgRp2DQSFsQFuuc/kOJJ01WHzKIyz5kOh40w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5294
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-22_11,2022-11-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 malwarescore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211220140
X-Proofpoint-GUID: KY1FGqpu4MsprukYQwYZV7mJ9RztFHC_
X-Proofpoint-ORIG-GUID: KY1FGqpu4MsprukYQwYZV7mJ9RztFHC_
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=kHi6Klah;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=XkEZyOHE;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/22/22 11:29 AM, Wenchao Hao wrote:
> On Wed, Nov 23, 2022 at 1:04 AM Mike Christie
> <michael.christie@oracle.com> wrote:
>>
>> On 11/21/22 8:17 AM, Wenchao Hao wrote:
>>> And the function looks like following after change:
>>>
>>> static void __iscsi_unbind_session(struct work_struct *work)
>>> {
>>>       struct iscsi_cls_session *session =
>>>                       container_of(work, struct iscsi_cls_session,
>>>                                    unbind_work);
>>>       struct Scsi_Host *shost = iscsi_session_to_shost(session);
>>>       struct iscsi_cls_host *ihost = shost->shost_data;
>>>       unsigned long flags;
>>>       unsigned int target_id;
>>>
>>>       ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>>>
>>>       /* Prevent new scans and make sure scanning is not in progress */
>>>       mutex_lock(&ihost->mutex);
>>>       spin_lock_irqsave(&session->lock, flags);
>>>       if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>>
>> What was the reason for not checking for ALLOCATED and freeing the ida
>> in that case?
>>
> 
> target_state would be in "ALLOCATED" state if iscsid died after add
> session successfully.
> When iscsid restarted, if the session's target_state is "ALLOCATED",
> it should scan
> the session and the target_state would switch to "SCANNED".
> 
> So I think we would not call in __iscsi_unbind_session() with
> session's target_state
> is ALLOCATED.

Makes sense for the normal case.

The only issue is when __iscsi_unbind_session is called via
iscsi_remove_session for the cases where userspace didn't do
the  UNBIND event. Some tools don't do unbind or open-iscsi
sometimes doesn't if the session is down. We will leak the ida,
so you need some code to handle that.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/856ccad2-19a4-32b4-b41f-5a230a55ee30%40oracle.com.
