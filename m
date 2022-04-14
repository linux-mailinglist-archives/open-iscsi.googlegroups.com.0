Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBJX44CJAMGQEEH2C2QA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA54501465
	for <lists+open-iscsi@lfdr.de>; Thu, 14 Apr 2022 17:30:48 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-e2d0cb6766sf2443899fac.7
        for <lists+open-iscsi@lfdr.de>; Thu, 14 Apr 2022 08:30:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1649950247; cv=pass;
        d=google.com; s=arc-20160816;
        b=gWPU4ZQUqdG9QVv/2ts9hc/sJOPP0CAUJ+0ixZTDpgLbDVV1cO9SyqMSWFkb8FFvZu
         kKaIn4aenpaxLC2+fINr1QDKHfCMU4pmbXWVBzeh4MSaIQBe4pg2kjJBc2owayyxtvCi
         3UAjxqAH99IxKmXcnaloRUb60YBLZVpAbtdpU2KvhO2+D1bZ7MBz8MYFPaHU6zzgNxcW
         klob73+Ci0yZVizcnqNBV+jPa8IQxhmCRiSJ65EHc78/VIf0b7Vny1SCTkGybjCor+kd
         MESFY9RJFQwde8+tS0BNFAL3GJtwWOqIt1XoYgQkEIjWAu9OnDXdM5xG+zHSsrsnsEZV
         yEYA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=L/h6+2arzP1Jz9HIwzw7KMKmd0RutF0h3UgTCLjRRIg=;
        b=yqKR17bfuckDWgKd7eXkPwTJrBkQ/OEP6lMMCa8a9gCXOxa7vxf+QSoXgKJUECKVhi
         8eMmQWWHX7B+cHxudYDXf+7Zdxiu8/X70cr2kwpbU4O3X7MVX1ttJtG/QOoQk21AIMXr
         sNZAoNmkugqtGQtNU2fp0QLzm1UOmoqakIGnSCliQa0aZLoXjo2cfhj1Q5XtWx1MoKfG
         eapdwLoVSLtjMIiV/RSb9300J+5dKdAWp0Ofnf8/RN+YZxeNLG6oyekty0uutX8fo+MN
         uJ/9j54NzBSnwDaKApFldTXJnAdz/xN5a8kUdFJ34xtqhpcf9WCbVmXUmaMI9WrLYUCi
         9xkw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=y7wpebNx;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=knOpah5g;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=L/h6+2arzP1Jz9HIwzw7KMKmd0RutF0h3UgTCLjRRIg=;
        b=f4HcFyjeWm4IwHlr8cKMF7g4DR/hU9Isa6Ga2We525uduRgEnumiMKduJ4NXn8h6Xg
         w/TvNUg0DtW03f3/STjkqz7cP8obgYMO2Jo/5YOQgmV4hLk2sG8KvnBj+pToUJlsi67z
         yQ8bX8KKsCWp4BIVDcUYdp/O7cE9yjrLXa3UvIwvvd57yAXA0Xo2MqKOpPzkkCzZzE5M
         2b1RSCrs1wksxAuw17zGzbkqJbNNqpOeaRJZftROF/CVg1lYlmW/n+SuyBSGrM3Jm7Ts
         gRR1FEC4UJkpmfp6B7RAllwGa+P7oIRv3lmLVSebtQVjNwueeCdd0fRaPYc4f61StxM+
         9xaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L/h6+2arzP1Jz9HIwzw7KMKmd0RutF0h3UgTCLjRRIg=;
        b=anh3mMhYjzqTYYN1ImcvrnAGdbKUNRoqGcnp5+oOGmCfDMLmY2xzO5f5vOCCV6obxT
         X07dsVkax0M4QT83v2n3w4mPIgmOgEatSwrOLR9inXixPwOBshWShJV2Y4ouqs7YJdoD
         M9WOTxIL+nVFoohYtp38YYKjZ02UZgS7PknJk+V5A6WyyRzyqeSy6UjAJzYISSlFj3vy
         qDH1JF6xlcozlalVnXPrR070AUP+On+iWw52SkUCH9n7Q4aOYvKU4CkUGd2Sc0XUSo5z
         fYqlAQDoBiFEg+SoPz4pixo96Q4WmsyJQEKv6JCEas+hhq94VsemTI7vT8fg+TVC/DoC
         77dQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531/QtHeFkPbQSWQSyTGA1VaZyjuTmb4BbF+cB2+/351w3qHJyFK
	94Y3Vji6/5QJaemLtyDraF4=
X-Google-Smtp-Source: ABdhPJyWVVMR8zkXPJe84w+1PZmP7KeZmVST58fEiDMTpMjnAd9LcShVJwGp8V3hzHhrex7qoD/8/w==
X-Received: by 2002:a05:6808:4d8:b0:321:6993:e78 with SMTP id a24-20020a05680804d800b0032169930e78mr1560077oie.183.1649950247000;
        Thu, 14 Apr 2022 08:30:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:1918:b0:2da:5caf:d28 with SMTP id
 bf24-20020a056808191800b002da5caf0d28ls3278162oib.4.gmail; Thu, 14 Apr 2022
 08:30:45 -0700 (PDT)
X-Received: by 2002:a05:6808:9b4:b0:2ef:9e41:4f6f with SMTP id e20-20020a05680809b400b002ef9e414f6fmr1581393oig.40.1649950245807;
        Thu, 14 Apr 2022 08:30:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649950245; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gmx234oheeqfN5WNkDLi3ML7Z3IeArBXT/scsDyG2Xc1aKN6viZn1EBYI5+j0NEdVJ
         Wf8FPLb/Ga/bHxi7K+ptiWu+p75BDpUDOqQmHGgeRR6o/i2/pygxtBR5qoNB695Rj+E1
         HMiAPZPKTeKGWXKCU/M4ngb9TYbh5zi9nKPL1N08TMT5AtQxm3NCCIOYl1D9dLG3k5ET
         5Tyf0jfLfNcS5TTV57R1vKxBONvV74zohNSBG7Npukt5TTDev2WvJY/brarYMWTugsRO
         yZTF9OExA3FYqgBhxKdC4GS2Cu8k1nY9Iym/mxjbYHb9ZPdu4fNg3QQHbnVpWw7uiCJH
         J1Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=vESphUkCiOx4Obwj8/WY+fA3Y5SQu6ubI6a9c6tg6wk=;
        b=N6XI7opc0i7sx7AcZX+JxCbeTSAHvR015rJHSzn4AbSFhvMifFTUIJZdbuFPkVUd3j
         gG/O8wCwrr2Qk32UsTFjCbeB6RGUEOdgtkI0TEhC2SXnINaQ/ifR48Zrh0Lry00aw9Yi
         cludbw5BYa+hi1as9JaTopWdxC6LFyO1ziYotj8s4N1aDO5nj99JAHpK2pjZ8fKuCGe6
         xmNtnCeGtj1LYsdQ2v74C8J8UevmS2Gnzr76limoXuuECFmkuEaIxxYJ4wNVRKUUyq4w
         pNvD9Vm/pNE94Ty2RcU9OR3/JKt34YipuVYA9Z4ja2Enin9pFPhtyLHUUrmUXdBZXGjG
         vmmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=y7wpebNx;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=knOpah5g;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id q16-20020a05683033d000b005c43e14b02bsi25095ott.3.2022.04.14.08.30.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Apr 2022 08:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 23EEB2pQ029058;
	Thu, 14 Apr 2022 15:30:45 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com with ESMTP id 3fb1rsd8f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 14 Apr 2022 15:30:45 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 23EFCS9p023867;
	Thu, 14 Apr 2022 15:30:44 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3fb0k4w9pa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 14 Apr 2022 15:30:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXv063NOVW4xzt3FlpeKbUm7GRnA7WR/itJQlz51qwwEtLU/ukj98Y7hS8GNQAcWGvzCyNT1/1W6PQ2cXWclgZY2i1rN21y3H3RVXk3CyL7Oy0aWt+3ReIBQ120eAWbNerhGYGkFCialqYjgdHlCeM2v2xyzlVt33NWXsEiYzbGXEdDtPlXJhf6wWkBpDnDLIOfWFROgb5yIM/jYFOcx/5JdSrfr51KryffPEt4A3RL6LJPFitou2261Yq7tHBcNyY6k2phjBVnRHaQ95/lSE/GclSn/6Uv7C/X0wQA/QAnw0SUBOahCoG/HhJ6n80vfggHo28d9R6+uHI+wM8jiqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vESphUkCiOx4Obwj8/WY+fA3Y5SQu6ubI6a9c6tg6wk=;
 b=cf32FEXPbP4NtmgCgmPO0PuCtgIilRu+xo5clF8qF6jyiMTpdKdkciTYqaLwKD6VC7Pl1SxEcnQwn5GgbckM8xlFsh+GTM0Kx6x1Nto84MtrGo+jX8zlneZUDpW3wrsuBDdkcwO4RwFheHnZrG+zQNZhRSBlzZ+1+QvGGKNC1MG58nKcvN0T6pmuQm4+9kBC6Xu+1OBHruHEIppJKfoLje82UhWAfiCCBsbh8hzCHvxBHF9OUw2SbytbXma97BQxYI5YcOmVJLDDlfz+1Ii3uw26F/VYSg5+dG3blE/qYfdqW3QtYnmqCFUXSwALNlbiQrfLWlndjCqgZ6eoIdWWCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DM6PR10MB2778.namprd10.prod.outlook.com (2603:10b6:5:6a::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Thu, 14 Apr 2022 15:30:42 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3cb2:a04:baff:8586]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3cb2:a04:baff:8586%2]) with mapi id 15.20.5144.029; Thu, 14 Apr 2022
 15:30:42 +0000
Message-ID: <a8087705-2cea-f01c-ce67-639e97edc30a@oracle.com>
Date: Thu, 14 Apr 2022 10:30:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 2/2] iscsi: set session to FREE state after unbind session
 in remove session
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: linfeilong@huawei.com
References: <20220414014947.4168447-1-haowenchao@huawei.com>
 <20220414014947.4168447-3-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220414014947.4168447-3-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR07CA0079.namprd07.prod.outlook.com
 (2603:10b6:5:337::12) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6886bbf-71f6-4c99-b2b8-08da1e2bbca4
X-MS-TrafficTypeDiagnostic: DM6PR10MB2778:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB2778E6333896A7A29EE3806EF1EF9@DM6PR10MB2778.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6hipbGpOMUeNtnT2GRtnKJzezzFaaNrfxZ5eecQ11QaTs3/HEAix1ib0WKsq42C/5z0bSXMCm11RySR+Da7pv4MkTYK/pFIMw3IRpMkzvzPDgREgCQC1MLSRbougAfKTdLejqSZKO5Ut5w8u2ltavgmyFpNgX4knE+GgsLbNKrKjDZ5/47UNxqLISTPjsvtfMuSKKT+2DTVgn4o7fw5A9MsS4QBMOl2+xu4146Nst1/ZzNaggnkapOpLmBrowYPkR9R32U3MwDy9EqhSfTyAiCXqgznnmGyE3SW8QZ0QoEndBreedsxfD6ZWHM7/P4gHQthH/lpPpAnfty7qs2L3Kym3UCgWfM2K5mggsGiphhS0xgdBVmhd6tY9ve4RpRanKfGgUJRe27q2KEKbG0TzyqWjYxqg/sXy7Fq5yv58xMihrvvoH/tlMFvKuM3OdcV4X4/cjX8I/VHRHDaNoQNEZCsCTxY6EKpOLGw8ybtKAcVcWLnOtZw0pqPP8Ca/m8TXGt899ZDNZk0twA2fxaeMvJdJP3yCx+aLL+yRmGwQb5CM7ps+Fbzw+L62FTZdBUMQQ42Y5M1I571annqW9jMxyZj9ywoTIP4DU6ABxE6nA+f/WsPhs0Mma0zoBhScAwJWJQbXQsvHRBU2rQ7BkjYERFeI9F6aEmA+SMQiLmRh16j36iPZoU1wq2JfR2Voiwyh3nRsfdCmZFBt6AAmMZRys6PzRnM9HBBwCU77ZVmWJ3rXCud1J+WtqbRICwqJz8eD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(110136005)(66476007)(8676002)(26005)(2616005)(186003)(31686004)(36756003)(38100700002)(316002)(83380400001)(66556008)(66946007)(4326008)(6512007)(2906002)(6486002)(6506007)(8936002)(5660300002)(31696002)(86362001)(508600001)(53546011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SllMMlN4MVordkR1WmZKUVFPcndZTWNVTXE0TnhkRnRJdDlhRkl5ZzlFdFlO?=
 =?utf-8?B?cElWaWpXZkljK2syeTNPdHdrbmtsMDRzeXl2czVXR0Y0ejExV2VjQ285c3lK?=
 =?utf-8?B?WlBVVUxqdEpuQmM3ZmZmbE9vUUpDWS9tcEtzNjhkYTN2RXJBY0Q0U29IcW84?=
 =?utf-8?B?aWNBdy9zcEZOS3Z1UW9HcE80WVptRXNBc3hOYkZYM3ozWFZFV0t6MEhqWG1S?=
 =?utf-8?B?UEl6MnU0VzFCVktyeTcxQXdGaWxnRU0zdFBUNEJzdG9XUkRjeFlLZHpnM3pM?=
 =?utf-8?B?QjNobjlocTZRdUpKYllzbU12Nm9KWWkrNTZlMVkyckdhRU1NUm03M3BlaFBX?=
 =?utf-8?B?YWhseEJXVngzc3dwVkZsQkhqKzNmUDc3ZHYwVEFZZ0lqeEpkL0N4SUNCcjM0?=
 =?utf-8?B?V3FhQzlrakhITkdYY2FpTE10aGF0WlhaS0NVNVFKYTdmTzB5SDhiY1kyNW9Z?=
 =?utf-8?B?VytOMjVOTXJCZnlML0Q0UTRTZGJUTVJKOCt6VXQxcFVHTFFzdjZDNVRQeTFQ?=
 =?utf-8?B?KzRZeGtsdURaNDFNYzlLbXBqWE1LM3ZOZjZzNUR1TllObzBPVlhKVHdlY2JK?=
 =?utf-8?B?K2hKaG9HbHlTWXNFamNCK0Q4TUtTWGFqdy9WNTMwTEh3RnFWWDdFNnZBUVNl?=
 =?utf-8?B?em9DNTFqUHlDVmxiTTBGMlQyV3hLZ0NPNlJGbFBuU1AyelVmeE5ZOEpGWThx?=
 =?utf-8?B?ZkNFQmhzVEZCSVJGdDlZY2QxZGZaOGdITGI4QWtsSHd6d0diMFBhUVB6NVN1?=
 =?utf-8?B?QlVDSjZRaW5YamhoYXVYb3UvcTBJUkZBNGRQcmxoRXRZdVVIWEpYd2dleUhQ?=
 =?utf-8?B?NWhWYUxudTZLSFBnVFRsRDZDczhGaE5CZU1kMi85ODI2YlY2Y3M0UmhjMUQx?=
 =?utf-8?B?T2NTWDZ5YndrMEcvaWJVV3dHYldybWJ2ek8rSWs2ZDRsSStLSmNycnpycTM1?=
 =?utf-8?B?RjM5NndhbGYwL1JBemd6VUFGK25OdlNBOGJ2YU9zNGMzVkYySWNHVjg1ZGtM?=
 =?utf-8?B?SDNITEZNQzVRcXk1Y0dNVnFycHUvYU0yVFJQVnc2V3Y5MFNueUQ3S3FxWEp5?=
 =?utf-8?B?Y2pPNEhVck9ndTQ0V1hIaHlOR3hrZnVESE9ZZXFjeWIwdEVrSWZ5T04ycU9o?=
 =?utf-8?B?SmtnZmtzM1p2bjdJMXhSVjdEYUFhbVV2TVEzY3k0TE5PaVFJREpTMVhEUUN2?=
 =?utf-8?B?dnU0OVBCMTJ5Ri94OE1zNzk4RXRxeGpReFFOYVM3MVg2T080bThMSDlaWitS?=
 =?utf-8?B?U0xFbERsQTlIUXMvb2RLYmh5UkwrL08wREJWRlowMGNoQzV2V3g3dXFYNWJS?=
 =?utf-8?B?VC9laDFxak40NGppeFR1ang1VXRCcFh1V1RyeGkreDFVMGNHNFFLWnNOQ05Q?=
 =?utf-8?B?MjBNVUVnck1KR2lGNlhVUGdKcGVOWi9IdzFaRVlHdWFWSlV1S2h2Mk1ZZWVJ?=
 =?utf-8?B?NzRGVlViN2doTDFFUHRneFp6eHd0Zmd1RldBditxOVhTVndCd2p1OEhodnc0?=
 =?utf-8?B?TXpjdnVKMmJoN1JMczVSUGpLSzJCcFJYMGhKV3Ivajd5M1pubUNiL2QyM0xl?=
 =?utf-8?B?eEkwSFc1QUtZRXkyWDhXQ2FsZk4wdEhBUnE3b284WXNNM3RuTDBsa1FqV05R?=
 =?utf-8?B?cVhnSXVwa3p6ZXpBdGllNXlzWFNrS3QrVmJuN3BPWUZOcVZsVUpveGQwNFF1?=
 =?utf-8?B?KzlVcXBmZ05iL0k1Z2RLcEFFdXFZdTVvMUFaN3RCbXVxNlVSZFdqMTgxdXlz?=
 =?utf-8?B?Z0dmQjkyM1ladksyMWxLVnFYbHdzb1k3bndQMER3OGI3ZlA0R0tNK3NNQkNi?=
 =?utf-8?B?N0xsbUNJby80Vkl2QVBodnY4RHUrMjUrVGc3NVk3bTFaWkl5UjJ3Zm91elpx?=
 =?utf-8?B?SndBa0JXWkVBZlNOSysvNHdxRUpOS0FLS1RkUDkrcjRIbDBzVHRHbHk5cEs5?=
 =?utf-8?B?SzdhOG91Nm1SdUxEb2ZveGJjd2pEUjU2ZFVPM2duNjlCaERMQkNVdkZyK0RK?=
 =?utf-8?B?T0NNT0RkUHBkRkxBMHlIT0I1enVDTDJSNFRQS3VIZHFKdVEvaU0vOGxyeTUr?=
 =?utf-8?B?U3hTQXMwa2VPOGYzbVRORGxIbWlDYkxudWttaDE1N1JlQ0lCblBRVFB6NFp6?=
 =?utf-8?B?N2NJa25xRWdsbm5sNWprcFNLOXZBOU1UTkc0aitDQVNVcktHdWhYYWxaM3hF?=
 =?utf-8?B?VDN4TnFMQUJwYS9TREk3QXJPVlp0eHRHbjRuWGQwWkdpOWlITGFGeWxuYy9D?=
 =?utf-8?B?Z3hVWnFJYURhaXk1eHVWR0ZiZW11S3VNaFN0eU5PRUYvKzA3RWFkaHZzUWNU?=
 =?utf-8?B?NHZXSHdWNExqaHdCUFZuMWhhRzFldHcvL1Z1eDJQZ0pqVDdoWFIwUVpuTTI3?=
 =?utf-8?Q?tAR9SU9gncvRZ89U=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6886bbf-71f6-4c99-b2b8-08da1e2bbca4
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 15:30:42.5089
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zapmv7pDPyRBK4zaZtyhAGff2pJVWXP9dqrvJY3Nyvn/yfsW6pC2Br3+CJWKH+eM3OChIt88Oho/f7lbPi68uNrAGfghd23UZYWQVe4hjuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB2778
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-14_04:2022-04-14,2022-04-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 spamscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2204140082
X-Proofpoint-ORIG-GUID: BcJs2MlBekKBer0O2Che3gaE8D4dVcb1
X-Proofpoint-GUID: BcJs2MlBekKBer0O2Che3gaE8D4dVcb1
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=y7wpebNx;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=knOpah5g;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 4/13/22 8:49 PM, Wenchao Hao wrote:
> __iscsi_unbind_session() set session state to ISCSI_SESSION_UNBOUND, which
> would overwrite the ISCSI_SESSION_FREE state.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 26 ++++++++++++++++----------
>  1 file changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 97a9fee02efa..d8dd9279cea8 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2173,6 +2173,22 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>  	if (!cancel_work_sync(&session->block_work))
>  		cancel_delayed_work_sync(&session->recovery_work);
>  	cancel_work_sync(&session->unblock_work);
> +
> +	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
> +	/*
> +	 * qla4xxx can perform it's own scans when it runs in kernel only
> +	 * mode. Make sure to flush those scans.
> +	 */
> +	flush_work(&session->scan_work);
> +
> +	/*
> +	 * flush running unbind operations
> +	 * if unbind work did not queued, call __iscsi_unbind_session
> +	 * directly to perform target remove

We probably don't need the flush_work test because we are going to
normally call __iscsi_unbind_session.

If the unbind work had already run, which is the normal case, then
flush_work returns false and we end up calling __iscsi_unbind_session
like before. That function then checks if the target is really unbound.
So the extra check doesn't normally buy us anything with your patches
because in patch 1 you fixed it so __iscsi_unbind_session doesn't send
the extra event.


> +	 */
> +	if (!flush_work(&session->unbind_work))
> +		__iscsi_unbind_session(&session->unbind_work);
> +
>  	/*
>  	 * If we are blocked let commands flow again. The lld or iscsi
>  	 * layer should set up the queuecommand to fail commands.
> @@ -2183,16 +2199,6 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>  	session->state = ISCSI_SESSION_FREE;
>  	spin_unlock_irqrestore(&session->lock, flags);
>  
> -	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
> -	/*
> -	 * qla4xxx can perform it's own scans when it runs in kernel only
> -	 * mode. Make sure to flush those scans.
> -	 */
> -	flush_work(&session->scan_work);
> -	/* flush running unbind operations */
> -	flush_work(&session->unbind_work);
> -	__iscsi_unbind_session(&session->unbind_work);
> -
>  	/* hw iscsi may not have removed all connections from session */
>  	err = device_for_each_child(&session->dev, NULL,
>  				    iscsi_iter_destroy_conn_fn);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a8087705-2cea-f01c-ce67-639e97edc30a%40oracle.com.
