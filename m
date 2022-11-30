Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBOPQT2OAMGQEMA2JTJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1460363E123
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 21:08:28 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id x6-20020a4a2a46000000b0049ca27b1507sf4628793oox.5
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 12:08:28 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669838906; cv=pass;
        d=google.com; s=arc-20160816;
        b=e9xzXaP3bb97D77a2dTV3e2IGddQf6SjJtkCluz+EtSnzoarHXIT7RxfzL8/2jdyMw
         Pm4rRm5HYD8AA1+Gq6gEHHHDptI18gr3HSGOXnyhk4DYhJSNKzJcoRmZjRYWytNxxpDd
         LAyttdcJJlg3JrciVwrR57zT7H1Zpn6LV+v9TmEY4p8WC+whKkSyndB/QX3RBNAZf2TY
         MSsolXj0qjYS0E6r9iyzuC5A1aCS5Cs28G+tq0CGBCIITTbzFNPsudz444EtR/6jLxBA
         gejB5OOy/xvCaViDrxcmJ0HabZww7RU6yai2Iq3lC6XzVmmV9SwP77V+SB3YM/jBMJrB
         Q+rg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=h3QELjQFesoQDXQFCoXZ+75fjwTkZUFYaE2P7xwejCs=;
        b=bWlIgrnJoApoPvTxeWCu+sNKHjPzWMdDlUayTQO9bPCQPB5vGRB3o2irllBV5X9hiu
         zJRQLjNo6FpDemkRyGHrcNBbAZlP7yAfIbT/kcuQsy9eQ2XMF9Z3oVuOzt0GUjlIofwR
         Cmw28e9XtvtHSUG8i135GQ9tce0f2GiVf8pj1NpdzQxep6oA+0d8Iv4MjwQpWU0izuWG
         BNT+P3sv9Klx5o26D8vy/Fu8wBly4LnDrxYmXLuYSfGZ4G5PjynEQkrx4c+vV/uIklNd
         lgph6lG56pGt6w0rqK+iaK1iMdfO7e67StnscuQB7qYzbSkwPY+ptoBEBo6ELLsGyx1h
         kwbw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=Sq2fHwXf;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=HrIYahDO;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h3QELjQFesoQDXQFCoXZ+75fjwTkZUFYaE2P7xwejCs=;
        b=DvsEQ7FDkfuyG3IV3Zokzk2VYWCBW8U4DwSqrlMwuzjaAASeaKRBuv+MEtyn+K78Xs
         6Lj/gAunVeHcn8nASRoUt+Q2tnfrwgjlem9oNeHILzycxNLdymCavuJKwOTEGhdIUuPE
         m3nhrpGTEN7wQNo4pH6NXtfg2hgq+rmo7XyNaRXkqT7YbljpKMLxDigSSH51Bgjv7ndX
         Dr5Ybw6x62zyHgiiUhWSD8HGBQFvdRpN5NHo07SrqLqqQsozX8anjp+C1p8MOij7ExcK
         MUJW1D68Yveo4GNtmMlA4x5A4klnY12MdOKpC9NL06IXxFrfZ8iaqAv9BjvAbRdaK7dd
         i+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3QELjQFesoQDXQFCoXZ+75fjwTkZUFYaE2P7xwejCs=;
        b=i448Tzz+x8xCgA9sTuc+rPKPUukXxoU4jZHojKzU9Ir4cspglk07LFfUQl4uP8AmUO
         oOeoXoqirM+Ib0hfC4JsiQoD/So45AE3A668u16/+WqT4lmjRnd66APKlFFzWMq/R9rS
         rWsj/wVyG499Y2kuHkVim/eG9cGBlm7Da3m7UyxqVjhFqRDSVSf/jpTFe9oF3Xb+m9Yl
         lFFj0rqYw7YVRgdInGzk5SIMF5/vRB5Sb+w0Vp/DvpugzJ6U7MPRYOA6T5uTVrhCcDvD
         Rr35UUBgVboah+5fEtXw5CzKrSgwqKM59aYklK/Rzyg0Ihr4bkMLcszVLpxlCy/xJrLC
         AMvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmNkcjoRm65/+Ffca3j6pOrBVYLY8EKvsdPU8JQ32fp+0/3gzpg
	qUSBBWPUsyFbiKvQqUgcoT8=
X-Google-Smtp-Source: AA0mqf6emIGpqslj00OxqbYD2tzaR0SwGzaJ/28e4VybvOBU50cjvuxDi8SWj8PqRLRQIT6irHS3gg==
X-Received: by 2002:a05:6871:4419:b0:143:7944:1ce1 with SMTP id nd25-20020a056871441900b0014379441ce1mr14556196oab.182.1669838906402;
        Wed, 30 Nov 2022 12:08:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:1147:b0:35a:6687:ef26 with SMTP id
 u7-20020a056808114700b0035a6687ef26ls5592260oiu.4.-pod-prod-gmail; Wed, 30
 Nov 2022 12:08:24 -0800 (PST)
X-Received: by 2002:a05:6808:1a15:b0:35a:3c4d:9c9e with SMTP id bk21-20020a0568081a1500b0035a3c4d9c9emr20087482oib.97.1669838904657;
        Wed, 30 Nov 2022 12:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669838904; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1sxZ2RWGiUAMUAgZPlHpEL3AYKkJR/T9uLNNiyRMXuqPPpgFZw8kwKN0JJ9Xv79Zx
         v5uyNCcY/xw9us4OfR3DUcTB96zYVJBTfe4mBkSeQpvtKlBDjGRfd/PaTpAIgT/uKYen
         XOkxVlfZ5G+3wzoZlkDtjSLmTzyKw2fOGcWqgn1seAzFuvpwbj4MxyP9ZvwWpXwPEGAN
         6ifPldoUERUhOk6WJr5i+qE4zI/vhUfq0csVwCyNksS0q/ZPs0UBTPWwZ5D34CVS2QFg
         8jqFLTmj/SWBXO+VS0juRZ7jsOkwezsIB9aN3NtWJ8lWDJhn7/dEPsPDHzj/2uZYABGa
         xcjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=VdrHm2GgfCv6doJnMgE4fGVDN/6tTdY37i31Wx8Tr6A=;
        b=PHohDw/rxvpTy44inp+kG4iF83XwFqspvoCpQdz2twzYiLBBGgW5rIOuckUmZU+0eX
         yZxvL4jE+KC3iwTi018Fe9fZFRFXOSELBLEBq8vZu2acsNufhpDSSRwwJUljNf88R6i3
         /va5YTZ9ihOWjHNKNd/C776jeP0uUTCoomm3bk39zpfE7QxcBioi4lDJdosRFr+aRQq6
         roVmL6GEGrpKH4J6FZgKPHqlj+hiHeBojXDIR4eFyEkWDRHeviEveQN6YOFgskSmCrla
         QcOHBaEhTUPQR5CftdbhlUJ4gnZoW5WCGqRWD969NAzYYkLW8AsaRJ31TSS/1/liglih
         BSpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=Sq2fHwXf;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=HrIYahDO;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id e14-20020a9d018e000000b0066da9f2faeesi193431ote.0.2022.11.30.12.08.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 12:08:24 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AUJx33a025426;
	Wed, 30 Nov 2022 20:08:23 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m3xhtardt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Nov 2022 20:08:22 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AUIXxeX036630;
	Wed, 30 Nov 2022 20:08:21 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3m3c1xwtmu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Nov 2022 20:08:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqsvBL027zSohoZzEvdjS0A6b6arQ3PY4n+/mPdHzm8yy0wy31663ShORjtj1PvdGG3UgRzSl10GBLSe5DCoN4neULppd0wR09zzVFv7hXeM9b/LVWJjb+nFdUzjd70P9MvNvf7Sq782m+yWWQQtlXN0UYoBcD4CmHQzH1c0UCIl2qKu4AqDq/WJmsg8Oz8wUdwIPUnWzQKRl2GSPgjzr6aDLVaS1CmTyx9s9xXOlKONuyX6YMA6DZ/6nmFwTdOialgfiaDbIjz1U4RKOw4Kd7Yx3nGP5BoQEjVeUDsf7QObHi8Ka9Uq77haeY/uzAhKYl41I2qSVg442AUbt3hCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VdrHm2GgfCv6doJnMgE4fGVDN/6tTdY37i31Wx8Tr6A=;
 b=NGULNjriB/UlxJb+owonfMJ0hg/N2uTk3zt/SjsXLwqwhRDeb4f5u/nAqlnN5lAuqtOjGrT5LqpmuO3gL/DzNg8YfixjPC5Bxq7ta7PJJSm/G68ArxTpmC7FGlZZpS6nw9f0Nrz8P5inZLgoSYGY1LIF6Hc3k3FjdJeCsU25OT/G4fgZxh5NmsD2f0Q8iilVIk1qkTkdkwRSl70H7aMZ4rDQZQkzr5pKyVUo86WGm/Kh4SZAnKrHAtrMotPPHvWQKFEdByOes/ftdH7ixpy2thqBE621Qm11eDAal91mutapWONE80qUkLwmGmEvk21gmJ17Glhr0+kAx+/8j44mUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB5994.namprd10.prod.outlook.com (2603:10b6:208:3ee::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 20:08:18 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 20:08:18 +0000
Message-ID: <5ae1b303-75c8-1dc8-d631-bff6db53081d@oracle.com>
Date: Wed, 30 Nov 2022 14:08:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Content-Language: en-US
To: Lee Duncan <lduncan@suse.com>, Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
        open-iscsi@googlegroups.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <057b6774-646d-5970-4743-20e249856688@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR05CA0025.namprd05.prod.outlook.com (2603:10b6:610::38)
 To DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: c981108a-3ae4-4d92-c7dd-08dad30e9ed9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3f5EDjXIRA3vXui6dNIpZKLLSmU/X1NM6AzvJ/W3J+8eSoQQyhbYhOo55hEFJ/anwGSnWvRsV5Z/M97jMN58ZdrSL4hyHyrOuRSuIvQXdpzjSIgQYHZsYkbqX6fuJLKFrEJyvrUU31AoxqvlFABncdPBxSJ5QRWPGQYvwcxEFxb4JBn5olwDjhsE2meK1cWSLjKLF1EGENKfpF8ipoDoUnNj4eHPv8v88dZZ+B8RP99f5a3VIY4IH9rLmdU5khfU96mtFXFplVGpU01YMl2lps1ADSNp/Tv21JoNK7YchMqVU/5CWks7/gQ06RYLA5Y6piKWalkz2k9+SO5CDJpJ16+BsEWRqPIw/30GDdslU3xI29+YHEsru0eg2r0GnGLNk/UUW8+cJmdnofYCqy6RdnClkZ4vVE5mulH49vicBaUwffExIYNcW+t2wD8HQHuwrKjCe2jLFzmZnLBsOuvHB/7QqTwgxLDyAAdZkeeE0pNSrmNb1IEG3HkGuznDVLhZJTnJ9qIvdw8onSdxnsV/uOjRQi9CDaBz4Fsoo9Sq7Z51fNCfHg5CQM2fBGq10oXeVEKvAnBYlbWKiBxWAbnenXDsv9C93lrcxXLLITeljhYJrYrZmh8eRlYOinbjoIWuqMNoh1GsOqYL9fhgeVxH3/HObh1Jr9v6ucSIiWj3r+Q3jDkZDpx95ULXhHfjsrtyNXdnvjCbSmqP+8KZiW5xYRJA7sgXcJhtRj9i4lEKIF8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(366004)(136003)(39860400002)(396003)(451199015)(316002)(36756003)(6486002)(54906003)(2616005)(186003)(8936002)(2906002)(31696002)(41300700001)(86362001)(8676002)(66556008)(66946007)(66476007)(110136005)(4326008)(38100700002)(53546011)(6512007)(5660300002)(26005)(6506007)(6666004)(558084003)(478600001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGNuSXVpRWJTSThHbHBpQXVsekZDWE9Tblo5T2xMek1IRDVGQlJ3SjlCcUVJ?=
 =?utf-8?B?RUtXZ0xsWnF6eitTdUMrVUVyMExQcHFWTnpIckwyTmt6U2IyNUFQL21ickp1?=
 =?utf-8?B?blJwcGN2TnNrRnFESlpVNG9MWmFOMTJPZTdiQnltZ3lPdHQzMStCUXVDWUg5?=
 =?utf-8?B?aHpvRGphVDluOEk0Qm1XdTZDV05meE55WnhWTm9EMnVEQ2dTR3BpanVqU3RZ?=
 =?utf-8?B?a3JPMmJ2TjJtY3RZaXdhK3J0TlltUVJTWGozNFJVdzNRQ24vT3hVMXlZbS9F?=
 =?utf-8?B?UHVDT2FMWlhkTDhUOG1acldUZ2M2c1N0R1BCaVR6MEpMRFFYNjNXZmRwcm4w?=
 =?utf-8?B?N29UUU5oMElKZXRaakdhQXhobzdrMDJESFZ2bzRNV3FicmZ3WGcvYXJ5SFdH?=
 =?utf-8?B?eUVwVTJ2K3ZUa1M4WkcvdWs0dk5SbEZjWTlSbHUvYkxvN2FTTmlVN0taQTNY?=
 =?utf-8?B?cVhGY3RvdWpEalZySW5VU1ROUFByaDJqRVluejdLYXU5eWZ1WTBzRFNwY1hl?=
 =?utf-8?B?enUvZFpBYzlBc2FUWWNjU25vRi9Damhacm91RFFMT2dJMm4zbytCUFZKWUR3?=
 =?utf-8?B?blJIazNHN2lGU2J2YS9TdTJVQWRaUmdNZ3FDQ01Rc3ZrWjRGMWsrejlLWkEz?=
 =?utf-8?B?V1ZiOG9aUysvZFo5SWEzK0pBdTQ0R3MzNFBhV01GZFNuSEtVZERpT3hOMzdM?=
 =?utf-8?B?UENFQnY2ck45YXMvTXlTK3dDWG1ab3NBQWdWQlZNWGY2c2c1NU9ONEVQc05N?=
 =?utf-8?B?N1ZKazNrQ0d1VjNNVW5NZWVnVWdpcXhBMlRHK3NQbTYxSlZMelZ4NWtENklI?=
 =?utf-8?B?MXF3K1BwQXNtZHViek5MYjNtKzloWXJiUEVrL2dKeWt0Q0dwd0hVWUpWZjlR?=
 =?utf-8?B?bUk3a3k1aFN0VWUxQzhQMUpmZVR0NUc1aDFNQ0JLU0ZXRksxYkFFOUxRTjZ4?=
 =?utf-8?B?OVg5MGJreTcrdE10VjZlSEFhR2dkczlsRUNkMGlUelVwcCsyL0NyYWJnOHhi?=
 =?utf-8?B?eDlKZnNqY3liZDRVSEJhcys3N3Z6WGtaTW1vOHQ4NWFtdjNpYXg5b0dOd3Fl?=
 =?utf-8?B?S0h5R05qOUNwRWFLUmNSdDI4MGF1NXZlLzFMZVVCRXJ0eS9ubkpCeVFyeXht?=
 =?utf-8?B?THFheXc4Q2pXcGVpblZFSHBJVHh3OXZubTIvOFREOHl1Nkt0dTVtcnRIcTZE?=
 =?utf-8?B?U1IrMEVPWVlHWHV4ZDVhQTNTNVA2VXY4UUE2MElnTDBEb003NXU2UUtudkpj?=
 =?utf-8?B?b3F1TzdtRGc3dnA4bjdhTDJtRUN6a0ZORWdKc0RQeGhUWDBUUWo2cGRIN3Na?=
 =?utf-8?B?YSt3Y21FRWtaWFdlVVNVdVZiUGwyOWk3ZXdlOWZ5QXh3K1dtWTB3S01mVTNZ?=
 =?utf-8?B?NnBtQVc3RG8wZFd0MEg4NFl3UWltbW95cElJbnJtbmJxVEYzMXAvTS9Pc3ZK?=
 =?utf-8?B?OEJzdWN3RnJHYVdySEUzWkNkdDBBRlVIeGk3NnRGUTNDNHRFZzJtc1hBeE1o?=
 =?utf-8?B?UXhpRHhsQllHQnpOOXlPNmprcVdmc2EzNGZlOXlYTlhCa20vZkpNMEltVHhk?=
 =?utf-8?B?Y3lIYjMreU82NUdDYUdTY2twWnI2UjczbVBVbTZmNGwzUzNtOGlJOXlFMmFZ?=
 =?utf-8?B?U2c4VnpsbWN4eEUyQXhuakMyaXNjZXlMMWpRRjg4ekEvUHZQek9oSmVUem5H?=
 =?utf-8?B?ZFk1OEVKNDRrSXJoakNNQjAyd0M3dTlQNGRMMmlvaDR0UFFwa3ZJdGsrblhr?=
 =?utf-8?B?bU5RSGhUQ3RrSUViZzd2bk0wSURxWTlpSVc4Y2hmM0ZXNXNmUFMxWUZsQVVs?=
 =?utf-8?B?cmh6STlwYWVxOFNKY2xHaE5memtLbysxZy91aEVZMmJtKy9TaENLc2VRRng0?=
 =?utf-8?B?NmR4VmxOMC9MNUlPMWc0OW5EWTJxVUx3M3B5YXpSYzk3NVp6MlRHY2VubXFE?=
 =?utf-8?B?dlA1OWNiWWhaWXk4bjl5aXNGbm5mcFdmcCtWS3BvbmhJWmJFNWVLejNMdWJ3?=
 =?utf-8?B?aFk1b3ZVMk1uWitXYlFCc0lJbGYwYzJ2ekRzUzFuVC92U29mNlM1Nnl6ajBP?=
 =?utf-8?B?a1VJTGFyNmRRdG82TXJVWUt3c1l3c29iZVFlTmsvY2Ywc1cyZ2l6UHE3akEx?=
 =?utf-8?B?cWF2bU1qTHk0Y3hROWQzTlM1cmF0Zkh0a2dXVlAyVlY0QnRMZzBVOEtlOFZx?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: AtXpbrzLZ7MbMgZnoF3Y4YNr/cWt6eYRblYEN6r+Vg8wnF1PFu55ZrE5iHKWgXUBg83oKdc+uRUn+DzM6fpafVCPrjU6y5dioKf8x2ZY/eS8ZF0+hyrMxEFSobWJmmHS3TQ3saGdHpBsBfKR7oafM9En3ijM1hMMICTioKC8ch+l8PnJqIccsm2t9oBWNiSnSOfyEkMK2bLSZnof+zCH7sqtk34iZOb9kH7L3cA8VhHsDK6PK6ReWUVJF6qlE4/RD/dt02jUmGGqw71XWHGSmZlaiUCL1gYgvtasJgU5UjHVYgMki8diLg344PZZgdEpUudGcDBI+desFp8k2WPEO/zQskgAzaXpWG5tt0y8wwHOfZZJhNaGd/+4DU1dcS/Eav2KIPfAWS/TN2WKtKBY2f6jAzFUNa1s5d40U2qN//7rKdggdWaBmZuSJQEL/flW622E4EbCmvFj3Zz2nR1bZqGc+49OhrIEo38xbz+xyDneep15eGDQ58Zcxd38RfXDfXfcmFTDFLt4mw+MQArtRIq/lnS3RkosQHDFvlxi3zxg8+SZm6SI3dn3/we529QEmhiLlfCjmQzFVE0vFSX5NeO++6pWgE20aRy8yfmseUyk0l40G7tiftQJlbJpEIjooAO5guoFJa9Yv0ti27EVk3MhQY+swx6pGEEQAa5QZijTwWzBIkN5ShYkGdnD4sfjcvm8MuPwPBWsgBilTSjGcdRKmai8sZfSqixcf+MpVUfQGIAhDJHLApucakB1t4iX+oKRP8NKVuDbFQ8Vhh90W5lzlbtKLqsO1WmD9aCNu4h3IneD8cstH6LLopq++KVzr1QnHeKXdODocOYDj5RtDDNPOzcsdUzJYU42F6UmDy2dyClFPsssgMiyZ1oE0A6o
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c981108a-3ae4-4d92-c7dd-08dad30e9ed9
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 20:08:17.9890
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j60HsD2dB1l8ej51qJ0XNpo0BwCGa9bysWZkOV1uhEgCgK2G+U0xrN94FANuzGBk2ko6fqtkyP1k3kPBWHvCu4bsMKWouVjoq3GxY7ZKsK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB5994
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-30_04,2022-11-30_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 suspectscore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211300142
X-Proofpoint-GUID: vVu9B6XkZq4mqeqXtI_sBSdQYI3o0lDq
X-Proofpoint-ORIG-GUID: vVu9B6XkZq4mqeqXtI_sBSdQYI3o0lDq
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=Sq2fHwXf;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=HrIYahDO;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/30/22 1:53 PM, Lee Duncan wrote:
> Have you already worked on the open-iscsi side of this? No reason for duplicate development.

I think you missed his reply where he said he was missed the
iscsid.safe_logout setting.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5ae1b303-75c8-1dc8-d631-bff6db53081d%40oracle.com.
