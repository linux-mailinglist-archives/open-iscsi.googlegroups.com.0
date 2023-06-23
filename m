Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB4ME26SAMGQEZ6FKM5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4CF73BC48
	for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 18:04:04 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id 6a1803df08f44-62fe5a90439sf10261006d6.1
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 09:04:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1687536243; cv=pass;
        d=google.com; s=arc-20160816;
        b=GdYt9tYsuyt05FGVzas5vYXqvvz0X9PCchVkMaHXpfNtowcaUxSuNG2wHl/Ub0Wm41
         orYg9yGl88MAc7nS3ab38AV80U6Pk4/T5IVQ0S2dXlVqfCRdjoHkivb2aGZi2qtrmMOM
         X4AQfi9E/IQSEClE3k329uX/GrM3SMVr0Q+8dYKIAp3BNhVlc40QhpmtBMdxU+1yn5aN
         3OaSG+blznv9q05VN8E2pPNaQSzNI6bUnzOsSeWayHvflZDMpibQchduepEWQUl9k5cg
         KH9Y0BLLiIHS6j6aQRKoxjy9j/T0XwM9RROO9Xi0P1XTARsZoha77FUwICXyNOYzmIC6
         /+3Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=CECnK6tdCWZSrngoE+vjA8yTyc1GHSdfdlArIh7dI3U=;
        b=n/fDNiTO3AvYFVOfW3tlt6zrNurbD+pafnlLgh0n0uJbBWyvTtKzPcy3IXmLWG6yRT
         3tlk8rg/rj6YRWOtgraQlbXBR0S6d6YvRrlWJDAuGDawoB0V/n8itrAeEJGPHSfHjCaf
         dfdeUzRTIu23DfHjdUnp1pcmMLivWbxM5LwoR9ZncN7a80LU9ROAnO0Dzzmma1UfPIiw
         uG9Mcjd3W3WDZHsf+cwGDdoQdFOr4YiHme1qV2yxDjuwXgxQinX4NX0oNMKP5VRVz0rr
         Lp5Mvs2xfheRvw6qODJXfolQlSGUpELrJTdgmMBQcurSV64Y0M/XRRUW6iWtuEtf/Urt
         V51Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b="XWuI/fke";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=FV1xd6Uf;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687536243; x=1690128243;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CECnK6tdCWZSrngoE+vjA8yTyc1GHSdfdlArIh7dI3U=;
        b=OVjY74f44Rm2/KDWEj9YdyVT35jFREW9q0HFnrl0jCU0/UTQPTzYG835UdCBY3XoD4
         77e7ul6iQUBvQZsuQ48qVPP9wFXocR9BruCNuEcCI/qXa4x18ZgMeO+LaKHVI1b9/lfh
         TRpkN5Q2psrglpQqRqGWkiB1re4cgVj2EDIvpsuP0wkMDbCFhRGmjmfmDtVczl0VObUG
         DfQgMG+iuIzkAEOuT74UNivzU/NiQbMIa0y34vtA0F87A5s4hssdeeENyS8TZ7UhyC5q
         33EWHE0anAc/WoiHNe+fboPmRXDu7AOQ0H2xulVwE06BjjcAN0WxgxISYXKptDGIWyHi
         5zbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687536243; x=1690128243;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CECnK6tdCWZSrngoE+vjA8yTyc1GHSdfdlArIh7dI3U=;
        b=Wk7VJ3+ekATAY+CtAMd7BGTZq1eFBuZOz6RuiTY8PI2fz7DyZjLihyxrRvimSO2dnf
         UWdI7tyoiTv4yQHBHbwdMMIgBMG3Dg0UYRZ8BHyq1CQ4qQtA1Gobz4gpwBz4yHHARdaZ
         Z4whlNHclWvbZvTLnszFzeuv2qUL/4gKzeHwGUPTBz5d/smYLg5rDmqcXGqO+DZGHSHj
         EykVd9nT6Jy2tZwTAb/rLFD4HVZvLHA7rboWHOWSiwviW7l8pAzGYz3DQwl48yIRd2hf
         tI7Mz7+drbmUgzLYUw3FmPC5GpF7VjY7DJRnNIbnORytT0tVDf9mttm2/st8gFvpoTAb
         IIww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDx3moJhiJjTbuCeW6HrHCOmrq39/uhH8XB27rjUOHg/9f58+Snk
	n0nBS8pG06Zpus6jfXMmn2Y=
X-Google-Smtp-Source: ACHHUZ5Nh44p2YQK3fHWF6lL0z1OCMh5Ic6dVfRo1SWbMUfKsgR9rTwqHP2y2WZMWjwrKYTMaFzmTw==
X-Received: by 2002:ad4:5eca:0:b0:626:2c93:407e with SMTP id jm10-20020ad45eca000000b006262c93407emr28964271qvb.38.1687536243237;
        Fri, 23 Jun 2023 09:04:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:8ee:b0:62d:e039:8b3c with SMTP id
 dr14-20020a05621408ee00b0062de0398b3cls1147797qvb.1.-pod-prod-06-us; Fri, 23
 Jun 2023 09:04:01 -0700 (PDT)
X-Received: by 2002:a05:6214:20c5:b0:623:8d60:da60 with SMTP id 5-20020a05621420c500b006238d60da60mr31154217qve.34.1687536241115;
        Fri, 23 Jun 2023 09:04:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687536241; cv=pass;
        d=google.com; s=arc-20160816;
        b=xV7mzbiHdOdlMmr5nI37sypd6/+peCr2Nn4fH7wL+zz4G0sDiihxqQp6bZWKVYNaMP
         CE32IWtECFXwgHw4c3MS2U0muXKql02HkivCRzMAHMnWh5QzXQD6NVUsQp9hsqm5Y7nG
         nDBakhmUI4ERvF4VN15ib+cRHztvtk6uivevnzeU1Ghnz3FP/u/b0sHDwj5WycVVF4bk
         lErUdBGiDv7XuQFvpZcbsWRvTrJp+rkSsyiuUi1XYYTtM/NHcaKS77JsAlXOhZw2YqGS
         mxcgT1gtmX1h52BvHX7AFkAcn36PFQcnNv3ULxpTx4+K3Vbh9GymWuZIocYouRHqRG5b
         slsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=uq88Nbx/OIKJc6YCr+2JGWlH4/KJ6GDw4sUMkNPR01Y=;
        b=ilwLAwcWNUU0jVhp8nIMNjB79/WRqwyO7KSB0mTwFCUHOUI4d7/tNJk/8WcPdQQvyE
         DEMJ8aW5izaG57ZXpLviyX4yKXqs+bFBtXFEgRkRwImNy0WtDErfapBiAPpKBEXlJfO3
         hB1nBdW/FVrgZ65v3hZ6Qxt6cbI1eVfFihiP4twmOTlLcsOSAVfftISXBF12OiyYzaxp
         dhr+I3dLA383gKMDoSN273akSC9CzQWhHw8EtskOy402cSlIj0fSamZrpScLXkiuhK1K
         cvwCuAPW4OpHXkhkNpKAIKyJ1mhcwl9iwbWSYAaltYhNi9G5vWupSoHGgEZxQQ/2lVS6
         x7Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b="XWuI/fke";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=FV1xd6Uf;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id c8-20020a0ce7c8000000b006261d48d4c2si700677qvo.0.2023.06.23.09.04.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Jun 2023 09:04:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35NF6G3O001391;
	Fri, 23 Jun 2023 16:03:56 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3r93e1mefk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 23 Jun 2023 16:03:55 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 35NEx2Bl031572;
	Fri, 23 Jun 2023 16:03:54 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3rdc20fmwa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 23 Jun 2023 16:03:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOIPGsk3RX/14kF9CpwN2V+jVY3Rl/7LrdBa5L2vm8hLs+72ou2CpPy6pjj4XMNePRthBFaL4vfD6/fBd++vQIvJOqht+Ig7cqYBJDWqzGMJbuG7BGQQVeITsFH5fOyLqCTjZ3RE2X1USZmBl+qwlKMsY5N0/U4DPY3oit4nBjELmF5jN2eceZn+45pQSrh0SkUycdDiDO4R3JYm3nkGV2rx9dhY3EbRAoO5Z1iXYLDNIDgKEHnxVMpq4jCFWKWiSg4MKNlhd1BsMr5UgmgH/axW8AhRhJ/4j+NmpM6K4xP6LtEzcofWVBs1BKCRkWWmTfm8mvZKquH1l2fa4mBUzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uq88Nbx/OIKJc6YCr+2JGWlH4/KJ6GDw4sUMkNPR01Y=;
 b=X6IBttGTSCvQ3EFb8iutXH9EoH6qNSIvzm7DxkyP2Twa4MEEvNmRNSn/V4ppj0v/YKOx6qFYjgFHzEEa6Td1IIQ3l5ogu/V/OS7N8+jXl2aF0vym7cGlk8ayG9pMjRcGJX/bqi8ff6zCTzCCvMqNZ1+M8Yin088r8qSCOgZykU2nhdZu8Z9TpxHnmBQSp6LBj0rv6XmRzRepCT0hdET6d2CklhOJVa44YB6fWhXqDW+6fmbZqOB8Bc2KzdREVURAq6OB+fP0W1DDfJmHeJDb32qwDbszSCPCIM/vqVFli5fpb7THY3eUYX56fLvIfEdfcFNL2p6bkoIqLBXBEO7SFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by SA1PR10MB6590.namprd10.prod.outlook.com (2603:10b6:806:2bc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Fri, 23 Jun
 2023 16:03:51 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::f5ac:d576:d989:34fa%4]) with mapi id 15.20.6521.026; Fri, 23 Jun 2023
 16:03:51 +0000
Message-ID: <27fd3750-7b9c-9638-26d8-0df3f0e33b81@oracle.com>
Date: Fri, 23 Jun 2023 11:03:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH net-next v4 11/15] iscsi: Use sendmsg(MSG_SPLICE_PAGES)
 rather than sendpage
To: David Howells <dhowells@redhat.com>, netdev@vger.kernel.org
Cc: Alexander Duyck <alexander.duyck@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
        David Ahern <dsahern@kernel.org>, Matthew Wilcox <willy@infradead.org>,
        Jens Axboe <axboe@kernel.dk>, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        Maurizio Lombardi <mlombard@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Al Viro <viro@zeniv.linux.org.uk>, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
        Dimitri KRAVTCHUK <dimitri.kravtchuk@oracle.com>
References: <20230623114425.2150536-1-dhowells@redhat.com>
 <20230623114425.2150536-12-dhowells@redhat.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20230623114425.2150536-12-dhowells@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR06CA0003.namprd06.prod.outlook.com
 (2603:10b6:8:2a::27) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|SA1PR10MB6590:EE_
X-MS-Office365-Filtering-Correlation-Id: 66a2e467-7ed3-4a0b-9aec-08db74036fec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HNTV1O7xqYOpxmJ4g2BF8tXebs8N69VD1m8AydvbQsiN7mz5athYxoSGiACOCVagf6pp77uu5AnHX6gtwaomqZhvLUdokzBFTGhp45bu2ybUp0FimSBBQ67HPBqLeS6/MC8VZX9d9RjobGVpZnPHQenmZITwarZM6EwnFQKD5GokYKPs9WS5cUg2XzBhFl1aABmwDLIASsrOmyjtIiVIsUU4/77Yq55GFLyI4ZQER1E+wwJc+1+S5J/5JoCaVB6b73cu8UN/jdU2pJaGe/Z+SCMnsYPseWxDn/t4BvSFtvDPHGqW++zA+Ct1bZrHNZta5+Comt7NfjbFjEbvQ2Tq+W3qet54nCDn6/6HgyrPAv77mgzGPi6MMPXz+ypMjCcVulyzUC1xKBP2cvwsTZtRfL1pXvQtXHtAZu6U+a1kxGsSPkkgSm9VEthmgHshWElE4Hsyxmqzrga52NT052xMuflO/Fq2yzBrhh3f/wtxUDRBIavHkBIRn4nAWajMX14Zk3eCyfN/ESd/4gOYCSUnOIBA0lLZBthmOi2m/DuMNBRXJyB6tJ7bDImurEuJrqyktGtKKShFCnsgh77tRb5JRd//Mq6OXbZYkjxt0D0DCmIFuvxcnFc+lXzfznyODmdY3QK21ncgQY5rqMh5QpdK7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199021)(6486002)(478600001)(83380400001)(86362001)(31696002)(107886003)(66556008)(54906003)(66946007)(38100700002)(316002)(66476007)(53546011)(26005)(6506007)(6512007)(186003)(2616005)(4326008)(31686004)(8676002)(5660300002)(2906002)(7416002)(8936002)(41300700001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZW41Z0RVVE02OGNzdWJ0OEo2Tk1sMU1Td3pEUUJ0UytFS3cxM09lOFFSem5n?=
 =?utf-8?B?Z2Jid0M2OEc3bFIzL0N0NGROUUVDdkc3bDBsY1EvblU1MXFDWHFGQmlwUCt2?=
 =?utf-8?B?b2tFcFkzYXVjL3FFNVEvWjJKWG1ORGRmNDd6M2RRMEtaUnBHdCsyWmlVU2lE?=
 =?utf-8?B?RTVlTUdscE8rWTNZZ3dXN0J0QjE2dHo4bjhKVVZmZVN6S2lITUZtbU1yczA2?=
 =?utf-8?B?Wmg4eWZITCtOT0h2SHpnSTFhZlhvbGMwektndUtFRllUVnFxQmhXVWVISW83?=
 =?utf-8?B?ZnRGU0l2L3N0dEhCcmJpcTdqalRBZGVuZC9sTFVpZURpays5ZzNWVnNmOGpU?=
 =?utf-8?B?NldZR0pncS8yZ08xR3pGN1IvdWY1M2UraGZDU2Jja21WMUNSM2NuUVZ4VW5Y?=
 =?utf-8?B?dDJHS3JtYS9BUXc0TDVJY2xMT3o1aEZzWUpzS2dTU0FlNWluN0czQi9tVEU4?=
 =?utf-8?B?OG1xSjgwY0lJR1kvblVGcFFyUDN3b3VWbW02ZDc1UG1LL3ovdEJFNEZxVkhP?=
 =?utf-8?B?d29rVXg4dm1BT2ZzTmloUWdHMDQyVEpUdEtJa3NYRXdYNUQwUmVMY3JscjNz?=
 =?utf-8?B?ZUhBZkhsNXJhdTVnd0RXZHpDN2F3VkFXRWVNU2hObkd0cVhSZUlVR3hoVENS?=
 =?utf-8?B?MDIwWGxYblVWS2NWRUQxTFJWbFB0emR2SEtBYk80U2o3aTZzS2NFOXVoTVhk?=
 =?utf-8?B?Y1hGNTlqcWt1ZVZhdnQ5TnJrbXE2MUJSTlhsRjNSWnpHM05FM21aNjIyaktL?=
 =?utf-8?B?Vm5KeEI0ekJjbkFMeVpnZUxHK09CTmg3UVFMcW1aMHZ0MnNRZXVScU5FY2Qx?=
 =?utf-8?B?QU9lNGRnK0w3bUczanIyMTg1Y2hrSWIvWU11ZGdSQlhtazdseTYzbkRrTG1P?=
 =?utf-8?B?elBpZ1Rja3VBVjhsMHNsS1luQ1Y0RzcxZ0ZPN2RJZ0N1cEZhdGhIN0J6YVNx?=
 =?utf-8?B?MlhmM0k0VkhCNTZER05MLzZybzFTMnk0MEFvYkRhSEN5MStSMmoyMUxRZWpn?=
 =?utf-8?B?MUhIRW1ndVpueEtneEdOMFJ6N01zVGZxS1Voalc1cnoyckdBcyszbFkySllq?=
 =?utf-8?B?TDk2UTRvOGxXbkdRVjJiTk9pdjJyaE5mOEZMd2NMQVFCT3dvQXhsUUs4OGRO?=
 =?utf-8?B?SGhwbXJJUENmZDNQT3VrN3NCOTFqbTlSSFZQUWZpTExNandJNEZOTlErQm9K?=
 =?utf-8?B?bFdXa2pvU3Q1K0xRSDJJamZQNFhUblhIZmw2ZGNIeGVhU3dFUXZiTlZJRHNH?=
 =?utf-8?B?U0xzQkh5QmsyUThEbFM2aVBya0dNMXh2MXJ6MHN5WFY0TE4wbWg5dHVsdXdo?=
 =?utf-8?B?WU1GVHdaZlcvbU5mNVpoczZqOERGb0RMbGQ1azRDdWM3aHA2a1NjWHc0Snd5?=
 =?utf-8?B?SGUzdWNpVm5hc29BOHdlUDBDeGV6VGtGVllQbkFibFZFREdMdEVrWmpNOE9Q?=
 =?utf-8?B?dE1ieUNTa0Y3anRhOFBWemFKV1AybVp5YUl4NXN6UlFkVVZLUkF6QUJPcWQx?=
 =?utf-8?B?K1hKNk8xcGl0NlcxUlB2Zk45QlVqeWd6T1daYXJveUd6SDBUdEhTcFVqMENU?=
 =?utf-8?B?aVVlR0pkZHJlTFVPdGo2RVpsOWJPdE1rN2dHekQ5aTBpRlNiRkRCbHFPSHFh?=
 =?utf-8?B?Sis0ZmZvOHBkRWxuTGRYMytVeW1ZSkVuWGswaWlBd0pMSzA1Umxaa1dQMWZj?=
 =?utf-8?B?ajN6K0tsRjM0cTFORmNwbjdOb3lhNnhRVkFBalE2UVVLR0pmVkFaYkN1ZEFz?=
 =?utf-8?B?NnJrWENHSy80WktMYkFwZlhkZkQvSU5IWVg2KzRDVTdJa01wQlVEL0puUWZG?=
 =?utf-8?B?cDFzYzFoTkU1WG9pb1hYa01Rckp4SkE3dG51SGoyNUMwZkVyQjh0eWtpNmhQ?=
 =?utf-8?B?UjdhZGllcEwyM1gxMWpLU0djdkp0L2liSytzY25oVTdFZnd0cEx6RTFnZWpF?=
 =?utf-8?B?Q1R6YnJHdWdBM3E5MzhFbXFIcW9aaUE1aWM4dUI0ODhReWVSTWxBOWFOTXBr?=
 =?utf-8?B?WXBJSDBYMHd1emdRMHNVb0I4TVJvSnVzajJROVJLSHVzWmRsNkZIUmxDcjlr?=
 =?utf-8?B?eDMzVCsxc2lTcFhpd3BlNXRVeVdZdUNoNkRrTllOZ0NnYldMYnNzdVlOZEdy?=
 =?utf-8?B?c3QwM2xmVUF0SjhWV0dsRmp4Z2lpVHNvbkR4dTZyY3hMcUptN1AzTDl0d29w?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?U0NYV284V3N4TWV1VWsrcDd2S3FaOU9pRWViMXpMaSttZ244VkZVSzRkS0dv?=
 =?utf-8?B?WXdsZTFqSXVTS254d1dPVi9PK0VSOUhYWEJtZ2NCSHg0akVFcG9qTURadk9U?=
 =?utf-8?B?Z0lROG9yYWJYUDJBTWdaWEFVb2VqYmVGNE1VczJGOVJUcWdYaHR1YWxycGtq?=
 =?utf-8?B?c1A2NzRSTVczOVB0N1kxZ0hsVWJJRENrNXBjTlN3bXV4a3M1eDBwbnhIWEo4?=
 =?utf-8?B?WjByTnNJNDlRT2x0RldrMmgzRUtWSGI2R21TeXlrUzNkMWJtcTMveVRPWktn?=
 =?utf-8?B?MmZrM1F6Tmg1UTZtdzhram81Mi8vMi9udGJrT0t0RHNhSWorUlFabWs0Qjlx?=
 =?utf-8?B?cnV5RExTWkxZbXhubGVhUDlScWEzOHdFRzZuQUNoUEhPVXowZ3ZVSTZCZ0lF?=
 =?utf-8?B?NTFVQlNUc1NCc2hHQjhDMmFVTWt4Uk5GaVhBNWNPNjZzN1ZESmJlWk9lbXJS?=
 =?utf-8?B?TXAyczBnbmFYbDBlV28vZnF4TnU1RWdFNEVBTDRPakpmQ1EwWC9vckhNVzBa?=
 =?utf-8?B?RTJvbkpHR2RvK054ZjM1bEczRngyREhRdXJxYytKMUlSRllzdEptd2ZEKy9J?=
 =?utf-8?B?OTZOSjA5QkUyYVd0QzJnRDdnZFV3OHA0OW5VWm15bGhDU0VDdndaV3F5VE1U?=
 =?utf-8?B?ZUpncENMM0UxVUNUM3p6QWx4c082UWhRRlM5eHJ1UllQemZGVnJRLy8yRXJW?=
 =?utf-8?B?SEs5Tno4YVAveTFpZG5GaWZjL2oxSkcwbVNmSno2M1VKTWcxYWdVaEFkSTVa?=
 =?utf-8?B?K2lMVEhuK3NNSTNnZmNJZEdwMlE5UHBjNmlHbHJmYmRKM3dhUnRJWm04T3Vk?=
 =?utf-8?B?ZGN2MmRYT0pVVEhQRTlCVjRQTlZaKzZiTHFldDN2T01lbktsZEFPL21NYUhV?=
 =?utf-8?B?ZVFEUWtBcnNSL0Z4MUNaYXRCb1VsNzdRZU44aDZmNnY5VENZZkMvSlhwVVh0?=
 =?utf-8?B?UFY5UWZFQWU2ZHJCR0FJZDZRR0R4aS9pcm9MWnhwTGttaDgxSnpyVlFGV3pm?=
 =?utf-8?B?TjNhUjMzblZsN216WVFJeWttL1dZOGNHRGo3cURRaTBMdmo3WDEvaFJhRS94?=
 =?utf-8?B?Vm1nOC9SOGVraE9OQURYdWlqUUtBVy9qdWNCeGUvTFRLNnBMSDZkdkY5eEFI?=
 =?utf-8?B?dXdvMWovSjNuTHR4Sm5lUkhySWo1MkN4MGxJcmdjN2lnT2UvT0lIb0pITDVv?=
 =?utf-8?B?MHBNNHhFTkJtRGhDWXRPRG02bU4wRTAwN3lBc0xJNzd6a2NWTzJidzRJdlFp?=
 =?utf-8?B?T3Yxd240VHBDNFpoWUdkakFTdmdVM2lPUnYwTmhaQ3VhWklsRmpNc0hPaWZx?=
 =?utf-8?B?QzVGZHVSMERGRnNTTHh3YXpNU0c4d2Q5QW9yNmVMMHpzWTFCWGErZUZqb09H?=
 =?utf-8?B?eG1HNFR4UnJTT1E2b2FlaG5WNmhlSGE2QW9ySzRscExaQ2g5WE5PRDRFUUhl?=
 =?utf-8?B?OHMvYkU2a1dEbFFmeXdCd0F1ZUdlS0ZuWi9HVzVtOU5qSTNES0g1WnVnZjlw?=
 =?utf-8?B?ejQ3VkF4dkZGd1d5L3RINXNYOUkyU1FqdHF6RzdYM3hSbGp4T1E4RmFzbkR0?=
 =?utf-8?B?R1VIZz09?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a2e467-7ed3-4a0b-9aec-08db74036fec
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 16:03:51.7210
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YCvb3BIiEE6gWYQdE6Ux/1XBUEezYIvhIbE1v7HtGwp2ONCt/ke0w2b1KYDYLN5H306KvwmbuIwTJfb0j6REX6ky4fPwUaD+QhGboNUzzw4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6590
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-23_08,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 mlxscore=0
 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306230143
X-Proofpoint-GUID: P5WB4_JcGiKRhUU-lMZU5u4eJsaw_OcP
X-Proofpoint-ORIG-GUID: P5WB4_JcGiKRhUU-lMZU5u4eJsaw_OcP
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b="XWuI/fke";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=FV1xd6Uf;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 6/23/23 6:44 AM, David Howells wrote:
> Use sendmsg() with MSG_SPLICE_PAGES rather than sendpage.  This allows
> multiple pages and multipage folios to be passed through.
> 
> TODO: iscsit_fe_sendpage_sg() should perhaps set up a bio_vec array for the
> entire set of pages it's going to transfer plus two for the header and
> trailer and page fragments to hold the header and trailer - and then call
> sendmsg once for the entire message.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: Lee Duncan <lduncan@suse.com>
> cc: Chris Leech <cleech@redhat.com>
> cc: Mike Christie <michael.christie@oracle.com>
> cc: Maurizio Lombardi <mlombard@redhat.com>
> cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> cc: "David S. Miller" <davem@davemloft.net>
> cc: Eric Dumazet <edumazet@google.com>
> cc: Jakub Kicinski <kuba@kernel.org>
> cc: Paolo Abeni <pabeni@redhat.com>
> cc: Jens Axboe <axboe@kernel.dk>
> cc: Matthew Wilcox <willy@infradead.org>
> cc: Al Viro <viro@zeniv.linux.org.uk>
> cc: open-iscsi@googlegroups.com
> cc: linux-scsi@vger.kernel.org
> cc: target-devel@vger.kernel.org
> cc: netdev@vger.kernel.org
> ---
> 
> Notes:
>     ver #2)
>      - Wrap lines at 80.
> 
>  drivers/scsi/iscsi_tcp.c                 | 26 +++++++++---------------
>  drivers/scsi/iscsi_tcp.h                 |  2 --
>  drivers/target/iscsi/iscsi_target_util.c | 15 ++++++++------

When you send this again can you split it into 2 patches?

drivers/scsi/iscsi_tcp.* is one driver. It's similar to a NFS client and
it has a set of maintainers that you saw in the MAINTAINER file.

drivers/target/iscsi/iscsi_target_util.c is another driver which is similar
to a NFS server. Martin is the overall maintainer but it's a group effort
to review patches.

I've tested and reviewed the iscsi_tcp parts. You can add my:

Reviewed-by: Mike Christie <michael.christie@oracle.com>

For the iscsi_target_util.c part, I'm reviewing it now and hoping Maurizio
and/or Dimitry might review as well.

One question on the target part I had is about the TODO above. Is that
something you were going to do, or is it something you are asking the target
people to do?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/27fd3750-7b9c-9638-26d8-0df3f0e33b81%40oracle.com.
