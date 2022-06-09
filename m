Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBD56RGKQMGQELBDZUBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 154DD545613
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jun 2022 22:59:09 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id q12-20020a056a0002ac00b0051bb2e66c91sf12766989pfs.4
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jun 2022 13:59:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1654808347; cv=pass;
        d=google.com; s=arc-20160816;
        b=C8cqy/PSDoZbzr+UZNi8bnJaclax46AVSJ/dBQA0tP4swTrMThTMHhqJxXT+1p7t4g
         hMCHpjF5rB5B4mPcavCbsa72CAIXMVmJAWl89qaPZiP5+wo3dDCEJ1lVR1XMNodRM1Ob
         itPb7Kxe2fKUsY8IofZ2U5iMHpZvvwtf1N99URsx+hK27PNlSY+oGbuq7nS+tl9J9QEw
         n9BqdDL7t+nS3mR1rhtFHQEPy92gEG1A1w5bRWVvICdk15PYxQt45KDavK4oKbNRHygH
         v6TSiixlgAc7xICme7KFzRTMAJXZVU9RlH/8jcqzZdYts+XEcdldl3AWzcqkXMx39s7P
         h8tg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=pXr/zhxc5EAbbGO/TelkHEIb8TZoGr9zydK3s4Mv22g=;
        b=bOdUCw1fjlLRH0d+k8ry6dTh1GUOwnUXH/4WAvA7RhUE/WsLRBgP5+acV2aD8B0YPV
         TyhgI57G7eRMhuPEAgU219FE/ODcgNCTQWq+ZtkRuFokdc3BOiqFAviZuGVZHpMy4rkm
         JDUi+4GQStltAbre/ojq9edSTswGeCCE9I2fqKLfVp/1vyoI7GaZuBlKO5bOyq0RE4cQ
         ehyOCJnbULrwOr6tT1z/u5pSjm9F3RNhgsHCdNdJd2YE3ygiO/UnU9kIQurLw+Et/71Z
         /DJxyJLlSmA1MB8NUVQuZbj1dqtpyD60HlZECTUWZXwT/RiO/lBVhndTOzIC24vHHflE
         A65g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="bhmltkK/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xHtA1Ayn;
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
        bh=pXr/zhxc5EAbbGO/TelkHEIb8TZoGr9zydK3s4Mv22g=;
        b=oMs7qlHjL5noCkH5gy0T1kNeysyfz/hNg9e+sZf4AdSrFZ1c3+YSYQsoB1FMOBX0P+
         3P4y9orI4X4V9bZG397XlZBf7dTzmU8iDqduANbdjPC7vMQ+rqjzdNWjCQZssyJG6oSx
         qh8RHL1MFGc7iXSUi3Lp38fnul+31q9Gb0vg4IfB1dibvPngBYgt6bYlVbTn1tZm2vph
         7EhGNrdG6jWPLdIzzqtJtqXZoNzJdgUjv8Oy4xEV8ns2tIm4kVSdQif39ORw0SFiUUp0
         Vc3NHbLX2MwyYSkrXL69UarZEkbDapOD6MneSBiQ/j4jtL2qPj/gkYCNEUiEmH8ZFoiM
         roNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pXr/zhxc5EAbbGO/TelkHEIb8TZoGr9zydK3s4Mv22g=;
        b=NzKQRw98ziJI/FetmmcndlGNsU4bR+wgi8MRnLaIqQBbC4G8E6e9GyGCO+1Z+Wqkrz
         psn7x6AWSVwKfn5kX5Cy8mH2OnzF+poRw8bGPqlrDh9g1b8fWeSfdD9eMdqKKMEs/nZe
         JySdQExsy8cPE7dOkCsZQpSJeRd7lptVnW2C1OyN3uv0omFUShrS3ZqkHDxaMT7Rk1Kx
         i3JRYmhXUpArXLwgiZYjVnPrL2KmfK1SvhzRef7Or9Zm1+ky4oAUIPGCuOvEEcbpL6Bi
         tu4LrX66bKRhKiL7AWsdCR7Dr3W6PgpWogEMzSFjruhK4At1m4IXRVRiePlinIpW6CyG
         Y86w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533512Y2cS+Rgy2AdLo9f7q991lK8IMWX3ZiP3pxcJIVD8Jo/QWS
	UeRwTqCrcPeH0M0aoyVGcqo=
X-Google-Smtp-Source: ABdhPJwQoIPyTy0AkXt6RH6WE3I1/HpGgm54WpmzdMvrZiEPaRK/QEz3fesEeExyS7hcDFp/J26e+g==
X-Received: by 2002:a17:902:ec91:b0:167:6f74:ba73 with SMTP id x17-20020a170902ec9100b001676f74ba73mr26341402plg.141.1654808336921;
        Thu, 09 Jun 2022 13:58:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:2406:b0:51b:c5fc:5f02 with SMTP id
 z6-20020a056a00240600b0051bc5fc5f02ls9763488pfh.4.gmail; Thu, 09 Jun 2022
 13:58:55 -0700 (PDT)
X-Received: by 2002:a05:6a00:1152:b0:4be:ab79:fcfa with SMTP id b18-20020a056a00115200b004beab79fcfamr108478968pfm.3.1654808334888;
        Thu, 09 Jun 2022 13:58:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654808334; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sww9EkBCuZl+/mC0ItadXjxG/jiqZgx93XDXUBHSX5MMO893uWinhYuYPNAt48HCRN
         Tf2CENMwr7P5jJHOjiWCoKjG813PNqEc51AZPxD6XjAM+A4mjyycVMs5hwbTWIX7zqd5
         +RUwL+DhcLBK6SBNXmw3VSZV70g7K25xQ/rMgNy3F+tw630sP/O9zkzGLzVK6DTt7WiU
         xgtCvNyPJDrmirK+TwOxn4jp9MqpqflvfEkaIHnO2Q/uSvdmfT/i396Gr0XTDUR7TY3J
         77vhN+Kd9FH6RGcp2KF3+xI5BoJMH87jvyXLffGbQPxUmC0EGn1NDGrcft7YfEizd8lc
         JrQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=Va56x0ef2akO8CFJsg79kq+rashaUK0gQldYfMt1dwk=;
        b=easxQsBUUiHip5RxeTl4FWWhZJRsS4BMsn/fFIBUE+03zbDfDt930mymwuzjZnmFcy
         gIdH7aPy5gU9mvvSRb5MUwEW4LhRi5U1PMZKzFTQy7d5KocNWS/BzoYUWA2F7GuPx+Ox
         3XyPHPfwlPveT2sbOhf0hM0wLgF7qpD4W061P9kQHlfpAnXd/Q9tbgnXZiwbAmJPyCv9
         a8LMW+GX0Cx9bbdQVBDp4lvu8rj6lFEXkeUuTSjV9ZhqrgpMXQhy+2+gFEtkiAAA9lZM
         rkc9zHEQWLZ3NmOLC1yHBjWVbyqZ/98rHvUwg80LbzTZgthK2/uVhEF2EA1Mnvklm5lN
         pdpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="bhmltkK/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xHtA1Ayn;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id q9-20020a656249000000b003c1a1d3a862si892880pgv.4.2022.06.09.13.58.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jun 2022 13:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 259J4LBW013054;
	Thu, 9 Jun 2022 20:58:54 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ggvxn29aw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jun 2022 20:58:53 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 259KeOPl024830;
	Thu, 9 Jun 2022 20:58:52 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2046.outbound.protection.outlook.com [104.47.56.46])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3gfwu5ke1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 09 Jun 2022 20:58:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmYfKnm3fnFsAeYadNjucE5JNr1U5Rz5yInFVxADDQcJIuPnWkEtJ2bFg4zFSAB8XLESuqwdYs7+hpgz9ChjTgGtMzeRdn30x8pFK/VOzmp4lwYyhEa+rc+/aGKaA4rnUDwhR5E09xIy8yHNhpiu6G9ZS3pf27MFgGBBuqz6MIzoZPN7gNzwPKM3euQyqa3Jrr5P17GIUuSvVkQ8CSW28E1KLSygtB8hIk7RGZxNG1rdYVI0/bIjGG4Rs5dY2n5xqAzJTr1Ck/EYeNYeyMrMDIcw2Hx/ZGvVGufbaKbtuEC5E9OwrCnYnlRGWL1/Q0KPFlq1wzhWJ8yC7/M2j3tL7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Va56x0ef2akO8CFJsg79kq+rashaUK0gQldYfMt1dwk=;
 b=Z3Lu/8IHqYMWstllQNoCnovzGWirvyqR7rJvEbvFZzIF0nqCwGPzw8NGFKxbxGkHClDDAUK6at0BYJv5EdXae2zr5C7APtvHnR0D581jCxR6lRBo/YOaM+jmqW2faMI5PmLB+x4i6sWzN1uXipc5rrALAcXM3hofUqOoFsFMcx6nVlCQRc3CgihigGyELSXpQogiTF2DbRutP9XkMUXcBZGXc0G3t9ilDJ0TXtItgNqOcSSni+wLfcgu9fuoHU2W2msqUmkVzR+oXp71JYL+ms2EGtRUtsIap3sFs3ziNUqofNr9hI5gcdevj1JMTxonPlzjIPfwocPYoIQlKrGUEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DM6PR10MB4074.namprd10.prod.outlook.com (2603:10b6:5:1d3::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.17; Thu, 9 Jun 2022 20:58:50 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::f81d:b8ef:c5a4:9c9b%3]) with mapi id 15.20.5314.019; Thu, 9 Jun 2022
 20:58:50 +0000
Message-ID: <d3277470-9ef0-9a1a-974d-e80250bd35ac@oracle.com>
Date: Thu, 9 Jun 2022 15:58:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Content-Language: en-US
To: Dmitriy Bogdanov <d.bogdanov@yadro.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux@yadro.com" <linux@yadro.com>,
        Konstantin Shelekhin <k.shelekhin@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
 <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
 <ffc1f4910d2b414c93dfa5d331436a53@yadro.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <ffc1f4910d2b414c93dfa5d331436a53@yadro.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0242.namprd03.prod.outlook.com
 (2603:10b6:5:3b3::7) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e197cea1-8eb4-49b5-e9fb-08da4a5ada9b
X-MS-TrafficTypeDiagnostic: DM6PR10MB4074:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB40745E53F1DE282930C4C7ACF1A79@DM6PR10MB4074.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 21EpvIYGHNygM9DJV1muhuLxUKDU4V6kEjOgFv+YbHw15biv3zRGPLjTJO17ZGsHO8EQs72BOiGu7kT0qJfRV/HpqK9SRBlSTbsnwa1zn3Y8JZWzgg8nGlNNr25r8K3ImD6gc6W16Cbcf4Rbvcus2IHBvwK72psi2XQYGS8GdAxoVvpeqiTuVDGjFi5pBek11D5glDLTmKa3ltpsYAICxy27E0yC1dzG2wM81+Uuq7ymFwyBqMj6KMW1sS9Y5Scu9cJxd5Axo6tlpIPWP0SjtoKynZ5VrkFNvmI+YmxU83dFam2qiuE9OhVOWI2qJVL6ODQldO9UVwIWOvqvTUWVviij6HbNaVLkIINvmYyHN3oxpiSqXwOKuYxXo2SWg2/aVo0/O61yVQ+opUxKDHYyLWlRlhkQGFF2Y0P+BZ6Z1qyydicRsWWHkBM8XPsJs8i8IsCdCY+FQTLObe59gey4SoDHA4sgySvlf52ou0STqkj1IX98md9AVeEyL4QcYM+dE786+hjNMsmt2QRCml4QaR5Gah+BfsNeJ1oEfv0Nv4dlqDSHc/IJ7+BE1BMm87TBPgYg4BS2kAfUeWABh4cHNvAb8HnWade1RgfvMkAXkMyHnhovLP0FCBreRMz9Nd9FX5PPNws1ak4cLHBrs81qC5SEWRbtDTpGanQXRnPGDBjiqEpMrmPqLuu+bhD/989Ldnyot1/NuE93Ex/DKtox9BmHtDAGolHdAQNrpTbCQMQot1PknfM9HPJDYMbGBMDMWyHG9rBIy10IxVapAAbazxezvkWyrKvEbFZDm3EBHDhP0LgHjEgR4vKjV3HLH8ku
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(30864003)(66556008)(8676002)(4326008)(5660300002)(186003)(8936002)(31686004)(2616005)(66476007)(83380400001)(66946007)(6506007)(26005)(2906002)(6512007)(36756003)(6666004)(53546011)(86362001)(6486002)(966005)(316002)(38100700002)(508600001)(54906003)(31696002)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0pqWkJJSXBSYlExK2tWTS83VVhCR0N2aGgrUFJhMUJKdU9jSlBMdkhNYUtS?=
 =?utf-8?B?VjE3TkN4RWNzbGZFR0tXNlJ0OHZWNytnYU1VQ3ljc09URmZzaTlUdTFIUGo4?=
 =?utf-8?B?cGVYVWFLeWwzcXNCbk9FQ2hXMGltZkdtNm9xMmxMNVFYRGcwWlZKaEF5ZTYy?=
 =?utf-8?B?bnhOY1MwYUZzam9pWm5ldlFrQjdtSU5RODRLb0J5eTFVa3N2akxNM1Q1WUN1?=
 =?utf-8?B?NU96OHQxOXlFVnRtRHFRTW1IOHlVK2tsbjZUZHI2VmVqRHBGbVlWN2ttUjJw?=
 =?utf-8?B?aG5zT1JSTHlOOWFYSmhDdmFwRzF1KzZZSi9PZDZhaDdhRDVXTFhHL1k3V0FV?=
 =?utf-8?B?Z1RvS21VRlZpU0lkSCtlRmZzbHpZVFdLcEg5cDN0QUp0ak9na2NsTUEzNjlE?=
 =?utf-8?B?Z3pxdzNqMk40UUtGbWJqOW9CNk9TL2dQZXlaNlgrbUp5bW9GMks5MUh2UUNF?=
 =?utf-8?B?U3M4WE9IWlEvbWlSM2RwS2MrUi85ZXlubWhVbG42bkhZYVJIZFJCMVp4SVYw?=
 =?utf-8?B?R3JTdGVnamQ0UzBaYi9ySDFWQUR0eGNzZEk3eFlCd1FhMDJoUHpucVQxeFJF?=
 =?utf-8?B?dWhjZnJBcUtROFg4TmRCZEdUNGVRbkRTUWpUVXZ3Qm1ON0ZtSTNwa09zN3pF?=
 =?utf-8?B?M0tWVnJoSUhmekxpYTM1QW9SMzZheElSMkdSRTdydXVRR1RLSWdVdUVVK3gx?=
 =?utf-8?B?emMxS1NuSnJEV3hxSXRaUk44eEYwek5wa3RwMHdHQjVFME9qaUlxNWxoR2h5?=
 =?utf-8?B?ZU5lOXllOU5MODAxYlhzS283MHVLRnJ3WnNUeDBQNWhkajVvU1REVGdGRllj?=
 =?utf-8?B?dGxxQUg1N3JHaFNRUXV0WTZiakNINXRTSUpMcjc4TGNCeEQ1b2FNbWtuY050?=
 =?utf-8?B?NVBYcGx2VjdWVGlhcVdjUkJMQ25jaks4OFZ3WlNmNk0xNndWeDJMSGhJUEpL?=
 =?utf-8?B?a2ttVUd6ZS9XZnNmalNjc0JXOXJyRk1DRk5DdGJmcHpHazNtcVgzbDRneWxL?=
 =?utf-8?B?R29FUEw1elRDSXVoT0FzeE5LZEtIbE9ZbE4yMW1ZZWxMdWZzWUJKSWhvTnVr?=
 =?utf-8?B?dzhyR2RWd2I4SXpXdzF2ZEpydTlHZUFwdk5DYTdwd1lJdy9Fa1ZFQjZzNnRY?=
 =?utf-8?B?VGd1b1luYUdSU05RVEszY2w1Vmh3d0d4VEN5MlNVN05RSmJRUTg4NERZVXpt?=
 =?utf-8?B?ZFJvbFlMcHdhZFVWdGpBV0FkK3oyVzF1Rm1rSUlZdDJWeEtqT2JkQnpkT2Iy?=
 =?utf-8?B?Y3ZFaEZZMFRuWGJBbHBKRTFxVlh1NjhVbCtWTTRaVEk5VlBkYkZ3RmVPNERB?=
 =?utf-8?B?WmVLQWNSbHVIUlVwWERIWENxZ0xhNU1mV3Z3TlRaM3EzWkcrMi90MkVzK1BR?=
 =?utf-8?B?dkZWckpOZk1PYzVKMTJQYlgrY0V6Y1kzYXBLYkJXK0Q2ZVFVR2NjMXRsclIy?=
 =?utf-8?B?dTVPR2VzYXYwUTlWZjJOekZJSDJhNGlaQlJMYVpWVGRzQUQ3bjEzZlRQUUsz?=
 =?utf-8?B?QmFsSTFObkVrQWg4SlVodUxsNEphcGd2SVJ1S01WWkZta3ZCa0hya1NFWGVG?=
 =?utf-8?B?cTdXcUVTTUVnUVl1VlFwSWJndnRVQm1acitvUFloZU9HK0dWTXprdFBCYWNq?=
 =?utf-8?B?eVFqVmdIdUVVNkpoVGdRTlJEUVQzcmMxWUtpeFA2WTRyc1NJbmJ0czA1RmRE?=
 =?utf-8?B?cEFKWS95Y1BCNVkvV2VBYjNjbGVpaFV1aDNLVHB0LzJsRytnUWNaSUppMjN4?=
 =?utf-8?B?TGZDZWNzemsrRVVuczlnQzdXVzlNcUwwd3dHSXJpRXEzTEZFemJEcHNRVHpZ?=
 =?utf-8?B?N1ErYStrZmNxbzJFaTVrT2VxcUNVZ1gxUkVIUGxiTlA0U0g5a1ZyYW43VVFk?=
 =?utf-8?B?TEhUamgrMlJDYVFLNGRwbE1IMm5FV2Y2bTVwSmxNVWpFaVdNL0I4eXJGNEJ3?=
 =?utf-8?B?WTNrR0pHUnpHZlcwb3ljblBVdldoMWd4SVo1QzJEMkYrenNtVkdrM3diaStJ?=
 =?utf-8?B?Tk4wUFFGOUFnejdpVGkxSEEydDdPK0lTQnZaUnh4YXJzSktvSHpydXFGSGNR?=
 =?utf-8?B?ZnBLazhBVXp1MXM0UkFuZkYzN1NheStZWW5vdktYOW50Z1hjaEI5OTRpWjhS?=
 =?utf-8?B?SVBjMm4yWUxJKzAyOStOaHJseEZ1czhEZzBLbVlpM2lPN0xsS1J1T2NQUms1?=
 =?utf-8?B?bjI5QmRBeUZNd1FWa29XYlBpcE5oRWJPdDhDb2RYWm5FRmpLQ0d5MWtOM2No?=
 =?utf-8?B?ajlzRDlSY2dEZFNFWVhKUHRLQUt6WktiOVFLbmg0NjA3OGJURXZocFQwenBv?=
 =?utf-8?B?TDNoYzEyMjQrV0g0VWJiaTBRUEV2VG83QnMvbjBkVXJERmhCOU5ialZtRE1n?=
 =?utf-8?Q?3GUj+55lgTVXeQtY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e197cea1-8eb4-49b5-e9fb-08da4a5ada9b
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 20:58:50.2603
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ice0vD2v89MW2HktV5wong02SGG2eFnFngNMUt9d0cL5PCUPWQgI+4tkHt1z1QuPs7EaNOeBd0cz4bAVZxcR/BV9cdhttGbiCpHg2ekwLZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4074
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.874
 definitions=2022-06-09_15:2022-06-09,2022-06-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2206090077
X-Proofpoint-GUID: tlW5qdRJnR8x0H-hMH94Um9-nFLJdxzn
X-Proofpoint-ORIG-GUID: tlW5qdRJnR8x0H-hMH94Um9-nFLJdxzn
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="bhmltkK/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=xHtA1Ayn;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 6/9/22 4:02 AM, Dmitriy Bogdanov wrote:
> Hi Mike,
> 
>>> On 6/8/22 9:16 AM, Dmitriy Bogdanov wrote:
>>>> On 6/7/22 10:55 AM, Mike Christie wrote:
>>>>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>>>>>> In function iscsi_data_xmit (TX worker) there is walking through the
>>>>>> queue of new SCSI commands that is replenished in parallell. And only
>>>>>> after that queue got emptied the function will start sending pending
>>>>>> DataOut PDUs. That lead to DataOut timer time out on target side and
>>>>>> to connection reinstatment.
>>>>>>
>>>>>> This patch swaps walking through the new commands queue and the pending
>>>>>> DataOut queue. To make a preference to ongoing commands over new ones.
>>>>>>
>>>>>
>>>>> ...
>>>>>
>>>>>>              task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>>>>>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>>>>>               */
>>>>>>              if (!list_empty(&conn->mgmtqueue))
>>>>>>                      goto check_mgmt;
>>>>>> +            if (!list_empty(&conn->requeue))
>>>>>> +                    goto check_requeue;
>>>>>
>>>>>
>>>>>
>>>>> Hey, I've been posting a similar patch:
>>>>>
>>>>> https://urldefense.com/v3/__https://www.spinics.net/lists/linux-scsi/msg156939.html__;!!ACWV5N9M2RV99hQ!LHLghPLuyBZadpsGme03-HBoowa8sNiZYMKxKoz5E_BNu-M9-BiuNV_JS9kFxhnumNfhrxuR7qVdIaOH5X7iTfMO$
>>>>>
>>>>> A problem I hit is a possible pref regression so I tried to allow
>>>>> us to start up a burst of cmds in parallel. It's pretty simple where
>>>>> we allow up to a queue's worth of cmds to start. It doesn't try to
>>>>> check that all cmds are from the same queue or anything fancy to try
>>>>> and keep the code simple. Mostly just assuming users might try to bunch
>>>>> cmds together during submission or they might hit the queue plugging
>>>>> code.
>>>>>
>>>>> What do you think?
>>>>
>>>> Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
>>>> 0 would check after every transmission like above.
>>>
>>>  Did you really face with a perf regression? I could not imagine how it is
>>> possible.
>>> DataOut PDU contains a data too, so a throughput performance cannot be
>>> decreased by sending DataOut PDUs.
>>
>>
>> We can agree that queue plugging and batching improves throughput right?
>> The app or block layer may try to batch commands. It could be with something
>> like fio's batch args or you hit the block layer queue plugging.
> 
> I agree that those features 100% gives an improvement of a throughput on local
> devices on serial interfaces like SATA1. Since SATA2 (Native Command Queuing)
> devices can reorder incoming commmands to provide the best thoughput.
> SCSI I guess has similar feature from the very beginning.
> But on remote devices (iSCSI and FC) it is not 100% - initiators's command
> order may be reordered by the network protocol nature itself. I mean 1PDU vs
> R2T+DataOut PDUs, PDU resending due to crc errors or something like that.
I think we are talking about slightly different things. You are coming up with
different possible scenarios where it doesn't work. I get them. You are correct
for those cases. I'm not talking about those cases. I'm talking about the specific
case I described.

I'm saying we have targets where we use backends that get improved performance
when they get batched cmds. When the network is ok, and the user's app is
batching cmds, they come from the app down to the target's backend device as
a batch. My concern is that with your patch we will no longer get that behavior.

The reason is that the target and initiator can do:

1. initiator sends scsi cmd pdu1
2. target sends R2T
3. initiator sees R2T and hits the goto. Sends data
4. target reads in data. Sends cmd to block layer.
5. initiator sends scsi cmd pdu2
6. target sends R2T
7. initiator reads in R2T sends data.
8. target reads in data and sends cmd to block layer.

The problem here could be between 4 and 8 the block layer has run the queue
and sent that one cmd to the real device already because we have that extra
delay now. So when I implemented the fix in the same way as you and I run
iostat I would see lower aqu-sz for example.

With the current code we might not have that extra delay between 4 - 8 so
I would see:

1. initiator sends scsi cmd pdu1
2. initiator sends scsi cmd pdu2
3. initiator sends scsi cmd pdu3
4. target reads in all those cmd pdus
5. target sends R2Ts for each cmd.
6. initiator reads in all the R2Ts
7. initiator sends data for cmd 1 - 3.
8. target reads in data and sends cmd1 to block layer
9. target reads in data and sends cmd2 to block layer
10. target reads in data and sends cmd3 to block layer
11. block layer/iosched hits unplug limit and then sends
those cmds to the real device.

In this case the time between 8 - 9 is small since we are just reading
from the socket, building structs and passing the cmds down to the block
layer. Here when I'm watching the backend device with iostat I see higher
qu-sz values.

Note that you might not be seeing this with LIO for example because we
plug/unplug on every cmd.

When the network is congested, the lun is shared, we are doing retries,
machine gets bogged donw, etc then yeah, we might not get the above behavior.
The user knows this is and it's expected. It's not expected that they just
update the kernel and they get a perf drop in the normal case.

How do we not give these users a regression while fixing the bug?

> 
>> With the current code we can end up sending all cmds to the target in a way
>> the target can send them to the real device batched. For example, we send off
>> the initial N scsi command PDUs in one run of iscsi_data_xmit. The target reads
>> them in, and sends off N R2Ts. We are able to read N R2Ts in the same call.
>> And again we are able to send the needed data for them in one call of
>> iscsi_data_xmit. The target is able to read in the data and send off the
>> WRITEs to the physical device in a batch.
>>
>> With your patch, we can end up not batching them like the app/block layer
>> intended. For example, we now call iscsi_data_xmit and in the cmdqueue loop.
>> We've sent N - M scsi cmd PDUs, then see that we've got an incoming R2T to
>> handle. So we goto check_requeue. We send the needed data. The target then
>> starts to send the cmd to the physical device. If we have read in multiple
>> R2Ts then we will continue the requeue loop. And so we might be able to send
>> the data fast enough that the target can then send those commands to the
>> physical device. But we've now broken up the batching the upper layers sent
>> to us and we were doing before.
> 
> In my head everything is vice-versa :)

:)

> Current code breaks a batching by sending new commands instead of completing
> the transmission of current commands that could be in its own batch.

We are not talking about the same thing. I'm talking about specifically what
a user would do today to boost perf for their app where they have a single app
using the LUN. Single LUN per session. App uses something like fio's batch
args. You have it send down 32 cmds. When those complete, it sends down 32 again.
We are not getting a constant stream or mix of cmds from different sources.

We are not talking about multiple users using the same LUN or even same session.


> With my patch the batches will be received (in best effort manner) on target
> port in the same order as block layer sends to iSCSI layer. BTW, another target> ports may receive other commands in meantime and the real device will receive
> broken batch anyway. The initiator side cannot guarantee batching on the real
> device.

The user does this. The user has set things up so they are using the device for
their one app. The app is sending down these commands as a batch. No other 
initiators are using the device.

It's *not* say a shared LUN example like we have N VMs on a LUN all doing their
own IO. The user does not expect the same perf for that type of case we they do
when they have specifically tuned their app and device use like I mention.

> 
> Lets imagine, that block layer submits two batches of big commands and then
> submits single small commands, the command queue will be 

That's not what I'm talking about. We are not getting a mix like this.


> "ABCD EFGH" + "S" + "S" + "S" + "S" 
> and that what will be sent out:
> current code (worst case):    A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)
> current code (best case):     A1B1C1D1 E1F1G1H1 SSSS A2B2C2D2 E2F2G2H2 (reorder)
> current code (bug addressed): A1B1C1D1 E1F1G1H1 SS...S (connection fail)
> current code (!impossible):   A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
> with my patch (best case):    A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
> with my patch (your case):    A1B1C1D1 E1 A2 F1 B2 G1H1 C2 E2 D2 F2G2H2 SSSS (still inorder)
> with my patch (worst case):   A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)
> 
> My better best case (command order as block layer submits) will never happen in
> the current code.
> If "S" comes in parrallel, the worst cases are the same, both may break a batch
> by new commands. But if "S" are already in the queue, my patch will produce
> (most likely) the best case instead of the worst case.
> 
> 
>>>  The only thing is a latency performance. But that is not an easy question.
>>
>> Agree latency is important and that's why I was saying we can make it config
>> option. Users can continue to try and batch their cmds and we don't break
>> them. We also fix the bug in that we don't get stuck in the cmdqueue loop
>> always taking in new cmds.
> 
>>> IMHO, a system should strive to reduce a maximum value of the latency almost
>>> without impacting of a minimum value (prefer current commands) instead of
>>> to reduce a minimum value of the latency to the detriment of maximum value
>>> (prefer new commands).
>>>
>>>  Any preference of new commands over current ones looks like an io scheduler
>>
>> I can see your point of view where you see it as preferring new cmds
>> vs existing. It's probably due to my patch not hooking into commit_rqs
>> and trying to figure out the batching exactly. It's more of a simple
>> estimate.
>>
>> However, that's not what I'm talking about. I'm talking about the block
>> layer / iosched has sent us these commands as a batch. We are now more
>> likely to break that up.
> 
> No, my patch does not break a batching more than current code, instead it
> decreases the probability of a break the currently sending batch by trying to
> transmit in the same order as they come from block layer.
> 
> It's very complicated question - how to schedule "new vs old" commands. It's
> not just a counter. Even with a counter there are a lot of questions - should
> it begin from the cmdqueue loop or from iscsi_data_xmit, why it has static
> limit, per LUN or not, and so on and so on.

What about a compromise? Instead of doing while (!list_empty). We switch it
to list_for_each and move the requeue handling to infront of the cmdqueue
handling.

We will know that the cmds on the cmdqueue at the time iscsi_data_xmit is run
were sent to us from the block layer at the same time so I get what I need. The
bug is fixed.


> That is a new IO scheduler on bus layer. 
> 
>>> I think is a matter of future investigation/development.
> I am not against of it at all. But it should not delay a simple bugfix patch.
> 
> BR,
>  Dmitry
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d3277470-9ef0-9a1a-974d-e80250bd35ac%40oracle.com.
