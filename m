Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBE7HY6IQMGQE6AALPNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD8F4DB335
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Mar 2022 15:26:29 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id o68-20020a4a4447000000b003210ddc07a2sf1489471ooa.6
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Mar 2022 07:26:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1647440788; cv=pass;
        d=google.com; s=arc-20160816;
        b=lQzo31vdRXgPXiWUTDRhZ+R9QQv3vDG7EHjLVc7Us3Nng7vRLkE+Zf4QnvvI9Xq9oa
         GAb3cv7QzR1KxE3gEyUXh8tEnBgeq6tPp3C+VERqHlY6s9jT5dKCGUdGoUzgg2BNNXDm
         0UG6lkCpoQVpXNlgLI/S7W4TWtblFTrmcafLBB+MLyKh72uh21TnS4zHSIGxBTgqOFxw
         aKvF4Rc3IATNT6ezcBE1cNmpbSLMyDPUPXQtpYUmebd/Jr7RedxQVVRj9e75n78cBFy3
         q35HUHA2rrpTc4JdvA8T0wIinUAI4rbWj7LdHwVNH0iZWwEglH1K3x/dAeejdjGgQK1b
         Qxog==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:sender
         :dkim-signature;
        bh=h5/oiVevQaiFDumvFt8qocRrXs8d8tbPRaDsabjzqZ4=;
        b=qbA17+44KYNQDhLwxvr3gMMg6R9IgjZ3SNCEUR239b18H3aL4Y7umjpuur/omKCg37
         SlYMEJaYNsYERXpQ0u/PHY/3M7dyaXUP9LdrW2KGAb7QKxRC1Fq0rQupKkdx370bA3T4
         B+Z7Dc7UdW6Bi4DE6OJZ/kJ/eqBiF8I12BaOxsoTKRY/0bQPt4IzDdUsY5HyaQBPlj0L
         Xm9k03OhLfrdtNQAvYMlfMhFi4pKeLzovLFzCPo/yTyD/zc2aOh6ZB0dQ4QUWssOqO1K
         Zxp2ru7pc2rD7FFB6IVyF59oRVsNK9iXTQpilxEilZN0sa5reEw31w9t+mNDY5kv92tW
         VSFg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=kALe+cmp;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=AEVofQet;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h5/oiVevQaiFDumvFt8qocRrXs8d8tbPRaDsabjzqZ4=;
        b=iyfYHhHc+mKaqSqCFfs+I4QTJK4zM74k0cXPbyOcnweRS4hYXIcpqHSExrxprs8rJu
         RWi14owTDNHoIVZlbPAa3cAQFD6fRyl1uUjFswCj0aVM8AxHFcUd1UqKRgSW/P29fqPI
         btQpYuFDaeHMC6QF1o4QmYh0B+Q8lCjTw0P31IEmUgy9RWIxmWSkJxEE1pXb18z+HCqm
         FMcAmhA8rCCdEr6uRdXTbKFHYLMMToEeYoEzUjAYZHHemD5qKuTCHLTxgiE54ebr30vQ
         A0bnVMzpMUk4Rm6Z9YBbq1Eo84MO7X9NpXVS/xm6Qi30KKAV1ioI+TvJDpeafxdk4nQA
         riTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h5/oiVevQaiFDumvFt8qocRrXs8d8tbPRaDsabjzqZ4=;
        b=JxRxF4UAaROse9zyEosfXnqAEf4fCzNvUxhUU4AHN+7LP1pKlhNX0xCRdN9yd//dI6
         3EwKcHS1ooXI7fYS6kxd7XqyLnKdmHO1t0wsP0puIfRQ1D3Rx5fD/TrckaGkUz3XGH2d
         nLCPhcy/drujqiaPVMZzT8iiLCAc0UiXXImq/QkOR2V9VT18dWDwQZBDaghgFE9udsob
         0MrSd0RYWKx3FDIH+yRqeF1mz3V0IGJtekspiGTTaKV2PPZqPDSS8fxL/cjMb1dezrKD
         egP1fyGMB5cjcJZuUoEbT4jr62I7hSgJSXYv8bmToctvMGK5wN/9aIyVFpjj+GTY2inP
         WVuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532VmACtUD6QiNMRby3ft47Vopfg+1QcfUMpubD4KjDKBnL394nt
	46kVykmLctg3XxYEnos44+Q=
X-Google-Smtp-Source: ABdhPJxeOEGf3cPOEkmME4CMvOnqNjJaREhjdkgcXY3YwDD5JMgdCzjOnzGz0TvMiYRcCepsYhy2iQ==
X-Received: by 2002:a05:6808:1a05:b0:2da:ecd:56a2 with SMTP id bk5-20020a0568081a0500b002da0ecd56a2mr3766752oib.221.1647440788274;
        Wed, 16 Mar 2022 07:26:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6820:3c7:b0:321:101c:f3e3 with SMTP id
 s7-20020a05682003c700b00321101cf3e3ls111491ooj.2.gmail; Wed, 16 Mar 2022
 07:26:27 -0700 (PDT)
X-Received: by 2002:a4a:e7c8:0:b0:321:11d8:6146 with SMTP id y8-20020a4ae7c8000000b0032111d86146mr12655417oov.76.1647440786939;
        Wed, 16 Mar 2022 07:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647440786; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVoYcHsmLRRPo0wIdf6ZlEB3kwhD0GRrBVjYnZzxb3e78Ld3WP37SU/vVFNyXZk5XD
         NKyfEvznw72ASi4qUg5sHhe+9Mojb6y2txveUFuY4zsEF6y9p7YWWBkNwGfkX3jbo+Uk
         1NzgarM5tSoZqQZrpAtXBNTHzlasOJBhiCPI/J34MHoP0Koapam9GbJ7rRdmHA1kVRZ5
         UbBT7tLBYic3IWGxOgclKAoK274/wbL8Y4Nj1juf9MpXdnLHx1hW5ancUK41hThFieCS
         o0r+8URgYOkHjmfiiFhLre+9ije524/S2Jmg8WVMaVf24VkSlnNDbNUjepeW6xTK0TGu
         bbhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=KdNtNnI4QahbTvVrcNWzt9odwVrLNc8p/H6Oeg0P8sY=;
        b=cd7FDgJet5/0BvqeppxSby1x9MQQvU+pPqMTCRAT4dQRwymjWvEisAn0W4rA431jn0
         yeCPLan4ePt59tHADb9vlLxTWtHMOa/bfvE9CHn8Qrbk5Y4Vu7/rEWZwXMaTSyMoKl7J
         C47SCECl1VzX+o2IXbeeVTuh/VgzF0R9kHI1mgl/JexJs0hS3p5qCCt4+LtNO5LjLKGr
         zPPDLxNYyelqeDKhRjkXs9Lb4er9PPoFHXOAupaPRi4nDU3cCbO34y4UypjnK9Tr9eF0
         lwT5KaBbGOOGgEHaQCBWdT7uBHOJTtyTgxh/StsZxR/DEcv4qXoSPTZvdPV7beRL0g/6
         2Tcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=kALe+cmp;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=AEVofQet;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id y10-20020a056870418a00b000d9d5c45df3si98745oac.1.2022.03.16.07.26.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2022 07:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22GCnCEd009569;
	Wed, 16 Mar 2022 14:26:26 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80] (may be forged))
	by mx0b-00069f02.pphosted.com with ESMTP id 3et60rpbss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 16 Mar 2022 14:26:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22GEGwEi078518;
	Wed, 16 Mar 2022 14:26:25 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by userp3030.oracle.com with ESMTP id 3et65pyqf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 16 Mar 2022 14:26:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDQswnONAB0Owb14v7ljDvpJMgENaXoHBLuDytWzJVuX2WMe+nFxEX9BYP6KYnhyhJPiCo4Tlh3ErUXIAucVCNBZsMvO+9evi+qlXkPf4hriuPfpncScRSNc2c0tPf5KIl16WyFfTSSEzgovsU2m0U57khYV1VNilPbHDSft8CRfrDkOHXwiQZPlF4GlXdJwropjZc9BkvZK1SYslO2QKBSDU5QYEzCzU+G6gqaYQMqNKMhfGPcBZYcMSX+eoNa9m6zu7sZpWF3g7HSFK2s6U/OkLtxrohQyO/FKRgfuw24WqBb+0D7C8kRvntN11M8y6kaOROnwD8a32dXL8F91yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KdNtNnI4QahbTvVrcNWzt9odwVrLNc8p/H6Oeg0P8sY=;
 b=aLAbK/AvpfL6d6xAx1AqPD0WAZSXJnmyg6mn9Om7xU2RI4ab0o2oCErp+VQJWTN6aS6mjhfJZmDvZEcAJ+0nDlz2Np/DdWZ3YOvi6Oe8OCoefl7A8WUfDKSzBPfbxomcK+jZJg2Iud2rKJ5U2HF+CBW3YfYiBGxLLlczVFtpkwGE4CktI8bwnZR/ehulRj8poUcHGYAuAIcKBEpTo1Yjkq5oxczpwFsCvEseJAFrfm8SAlv6XYDSGutzt/6ioLRrdba7Q8M/anHwh+1fpdc9XIq17MeXZ4KBsgejP/mKr7td7DUN/oSvEaf6vg5oaXtzDhJy5mdNCEdlUUO+JvIjrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB4955.namprd10.prod.outlook.com (2603:10b6:610:c2::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.15; Wed, 16 Mar 2022 14:26:22 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5061.028; Wed, 16 Mar 2022
 14:26:22 +0000
Message-ID: <7ac617f1-0187-c296-bc5a-f3e26ef21488@oracle.com>
Date: Wed, 16 Mar 2022 09:26:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] scsi:libiscsi: remove unnecessary memset in
 iscsi_conn_setup
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Wu Bo <wubo40@huawei.com>, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        Zhiqiang Liu <liuzhiqiang26@huawei.com>,
        Feilong Lin <linfeilong@huawei.com>
References: <20220316220936.191013-1-haowenchao@huawei.com>
 <44860f67-e626-411e-5ee6-9055ea2d5723@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <44860f67-e626-411e-5ee6-9055ea2d5723@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: DM6PR07CA0070.namprd07.prod.outlook.com
 (2603:10b6:5:74::47) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20cc759b-a132-408b-0158-08da0758f1e3
X-MS-TrafficTypeDiagnostic: CH0PR10MB4955:EE_
X-Microsoft-Antispam-PRVS: <CH0PR10MB4955579AB00A98E5041BEA3CF1119@CH0PR10MB4955.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nl2BpHT7ePm6RvPyloW9SAs7X8yD04FLgljQt8Hwkh1KxjVqszy2kdZ6nwMyMoLeaeuz0UdHWbkGQxYMly6MceTLurE4ecooRqkAV+gbfV1Kih1/LrBInyBWfNiXe64Ip/kRxc44W6zzt19spqwZ1K8SrpjVkWfwc63kYRoCZdRhm9fVBwUa0LLMahTMQyk/KkNZkky4ynYnY+BG2uiWVuKt/631TBJKCyXDmfRnjnsfhEZ6uONwLakIa3SMN+pboBrIRY/6Ixz6zk+/3Gt6ZKqsyjm0WAp8S4nhC6Bxsq+zFkQODmh5glxw6orsBOxlKxZHaVA28L3P3nO1bZ1Vr+VdWpBZ9aI0f4U4K+EnpeOIKfDYrog9M3Hr+3g3JvdOmKK8MYZJ/UoR5G/lBtL3dzn/94NMxe2Xg7hygkSsk2VBaxH1izbDESYM2se+u9/uZtavsYyuHfv3VlEb/I5K6uMI/cKUx+T4xlqdMpPxscyAjJKcGkN2mqiGQzOLoGVsbm4caB7xzCn/vjsJtAqYesUt36sHST/vl2PuMN3seaZE0fHAD33PezO8utaxi1ErAh2abUKALPSQA4ZPjjF/8T0woQp4j8u++ruTYrxQyvn5F5aeMvOnnJFnhBeLJ6lVAkl5wArI/6jExwVdhuvVp5uvbRZW7xQc56MI8TYn9N9/WgMEyeha7VSBFihH4nsTrosUikv6NVhgkVBj6GQtYbNSb0QJEcotrBKE53mu6kk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(31696002)(66946007)(8676002)(86362001)(66556008)(26005)(186003)(66476007)(8936002)(6486002)(5660300002)(508600001)(38100700002)(7416002)(2906002)(6506007)(4326008)(2616005)(6636002)(110136005)(31686004)(83380400001)(6512007)(36756003)(316002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ky9lYkNKdUx6ZUpKazlJaG5BMXNsWU5KYU1BbWR5Q1lpaXVFMzBHNGdPS3Iz?=
 =?utf-8?B?T0YvTllsa3U1UkVJc1JhVXU0RE5XaE9kaHUzRTBMalR3bHhxNDYzc3hTQjFy?=
 =?utf-8?B?dnBUMDVacWJtME5XSW5XRysxTnptbVBYTldlbEo0ODVWSU5COHE3VkdyMEx0?=
 =?utf-8?B?QkYvRituSUhMSnVjYlN3aWF0NXZUc1ZyVjFVRVV4QytrVzZCWVZrd24vR0pv?=
 =?utf-8?B?Sm5WVyt3SEZQUFN2TVNBRllpRERPK2c1MTFpRStFN1NKNi8xWkdWZnc5MEV5?=
 =?utf-8?B?UHkyU1YrVkp5MG1TMGl3UHYwMWhjTkJFWkpSZWs3K09xWmR1SkZUdW5sc3N4?=
 =?utf-8?B?V2NUWU1qaGRNVFdqRDcrWU9abGVTeUNRNStwdVdnSmhjS3o3bGNISWhqSHpG?=
 =?utf-8?B?ZFUrejRVYndSZ1hldk5vaG5JMlVIMzVncGwyWlEzUEhHVkU1SWRrczJ3WDBy?=
 =?utf-8?B?V1l4YzBjOUt2NXJNTlhDa0dpUXJzbHpQalRrKy9YczFPdXduZXJkYkJaL0tB?=
 =?utf-8?B?YVgvaTdpbEJpVzVhMTVWYUtzMGI2dHlqeGRuelR3Zm1hSGRwYWhjSmVhL0t6?=
 =?utf-8?B?NEFVOTBDVFBZSGN4cC9SdFJNM0YzSVoycEMzWDdzOGlneVF1UHExTmlTWEVo?=
 =?utf-8?B?cXp0cG1JWUk2NEZydTJDM01hMzVBclk0c1ZyV21mR2NmczhMcXV3ekltejJB?=
 =?utf-8?B?Z1VST2g3ZS9MS3VpVGlZNFhhdHNabjNDaTZMSFBhWkM2Tm9DVllBNlAvWXdi?=
 =?utf-8?B?YW92UHJoVEJBWkxzTlNnNmcySG1XVE5icXFPU0RyQWhuZmxWT0JtZ2JUaTFn?=
 =?utf-8?B?ZHF2c0QyZHY3UDlUclJtYVFBd3dyWjVpUlNjSzAzNytGM0Y5amRjOTQ4NFgw?=
 =?utf-8?B?bHdQSjdrYU53dXJxM1podWtpa1UxRFZCU3JIZDVteFExL1BPNnBWbXdXcS9G?=
 =?utf-8?B?NkFtZi8zS1BVVEJvcE8vQ3VqZWxuQWhCMjNYcWJMYXpDTHVWdUwyaXZzT05r?=
 =?utf-8?B?WmpIQlR4VVhJWlFBa3UrYmhxcUJFc2pET1dXbUpMQzVRcVdSazRuUXZyNVZs?=
 =?utf-8?B?R1ZFNnRlK1d2b1lIV1I1dlBpUkwxb1JHN3Ryc014clF3MkRYVDRYd3ZhbTJm?=
 =?utf-8?B?NnVKMlRRczh0ZDVNbEw3ZDNsYjRzc0R6bXpjd2JXMG5TZ1dyOHVwVHQ1N1NF?=
 =?utf-8?B?OVlCK3U2VGVVMTZHeFB5Q21uc205QW1RNWdrcUQwTnZ2ZFFGaHluV2s0TSt4?=
 =?utf-8?B?UzVmOVVJUTQyZGJNV1Zhb1JCc28rdzNISnlVRUs1Vk92SzJtRTh0WExMUGRi?=
 =?utf-8?B?NmFyMUJtMC9KVWFmUnVBKzRVZksrcGt6aUNCUStEcVpoMHJBMzNnOGRFTUFX?=
 =?utf-8?B?bE9aSDdTU3B4RitxNUlsUDd2V1pCc3ZPWXB0QWJMWXJGQ2NBVFVJdnVKd08z?=
 =?utf-8?B?aWQwdE5VSUwxQXJHVXhIbnNOR09uOEJYZTFGOVEzUUN6emxJbmdzMkhQdFNL?=
 =?utf-8?B?cXQ5a2RFWFpHOTIxQ05CbENFSkt2KzI3NjhCRVc1eE5HL2Z3c0R3RExBYS9G?=
 =?utf-8?B?cmx1RmdRbGZyYTZFUGlpWWRtc0hJamdtNzY5UFkvdEN1WnFNdDFsMDhMRDY4?=
 =?utf-8?B?eUNrTUw4RXFYcURHa3dPUlB6L3VBNlBPNmpaakRMWlVqSWptWW54QStRdnI5?=
 =?utf-8?B?djlNRVZOY1B4aWpUSkdFMEhiRUY5ZUtNNDVHdGRxdWttOXM1UnFvVGVaVllr?=
 =?utf-8?B?anQyV1FhTzFzT3lVQkdpekNKSThObjFQRDl1NE9pZmhUeXI4cTE5RUd0UVQ1?=
 =?utf-8?B?N3lVWUcxSzVNOWhHT0M5clVTc0NkdFQ0TzFOUVp2TTdOdmVFRU1yWWpzSzc1?=
 =?utf-8?B?czZvMWE2TE5oNWN2ZkliQUNMdHdkYzlTUjlIZjJXUVRvQmJDTXByWDRsYldX?=
 =?utf-8?B?RDExS210bjBualA5UkRmVGcyY1JYcDAvZ3NpNUNobjNHTDRHQnhpYmUrRWpU?=
 =?utf-8?B?MGpTYTBBRE9nPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20cc759b-a132-408b-0158-08da0758f1e3
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2022 14:26:22.4923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GdjMsm7iRVTLkU0daqBrgnQNSDvEEi6spHWVF3FIGTE11D2zcmRMHGvuK+3SUL1M93wmVBs2hZniSTbJm02nkkFQjY5rfmK38f4zmn+orwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4955
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10287 signatures=693139
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=976 phishscore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203160090
X-Proofpoint-ORIG-GUID: qiaz-3doKAGmGvVIvmC7bJPEKtTgxhap
X-Proofpoint-GUID: qiaz-3doKAGmGvVIvmC7bJPEKtTgxhap
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=kALe+cmp;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=AEVofQet;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/16/22 4:02 AM, Wenchao Hao wrote:
> cc open-iscsi@googlegroups.com linux-scsi@vger.kernel.org
>=20
> On 2022/3/17 6:09, Wenchao Hao wrote:
>> iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
>> zero filled already including the dd_data. So it is unnecessary to
>> call memset again.
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> Reviewed-by: Wu Bo <wubo40@huawei.com>
>> ---
>> =C2=A0 drivers/scsi/libiscsi.c | 1 -
>> =C2=A0 1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
>> index d09926e6c8a8..cf4211c6500d 100644
>> --- a/drivers/scsi/libiscsi.c
>> +++ b/drivers/scsi/libiscsi.c
>> @@ -3045,7 +3045,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_ses=
sion, int dd_size,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!cls_conn)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return NULL;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conn =3D cls_conn->dd_data;
>> -=C2=A0=C2=A0=C2=A0 memset(conn, 0, sizeof(*conn) + dd_size);
>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conn->dd_data =3D cls_conn->dd_dat=
a + sizeof(*conn);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 conn->session =3D session;
>>
>=20

The removal of the memset is ok, but you should resend the original
to the list because the formatting got messed up, and I think Martin
can't track this (The patch doesn't show up in patchwork/lore type of
things).

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/7ac617f1-0187-c296-bc5a-f3e26ef21488%40oracle.com.
