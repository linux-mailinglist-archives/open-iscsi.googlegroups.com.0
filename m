Return-Path: <open-iscsi+bncBAABBCG6U2FQMGQEVEYKBXQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E88F42F872
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 18:40:41 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id az37-20020a05620a172500b0045e43348ee8sf7118905qkb.19
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 09:40:41 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1634316040; cv=pass;
        d=google.com; s=arc-20160816;
        b=GHu3JNTivdfanQHZx3/U5yXBrvJyQCcNouGc7EqGTDPhz2g60yZsoj5HSuD3lq+qjq
         +hz0OOcY9JxSNjUzSfDBwGx0u6Rc8buOKJKkYRS8D/x7552QQWhHndg7Gro0SSH/yBbQ
         Yc682BhVwplniTd69ESihEtChVkEc1b3070yF/uinN08PWZrtDlxBj2Fg4sBPBLFHC4m
         ctSq2DIsbp1gd3XsUlCHtXezoOdq0UVdeT7Eik0EKFZK/VaA9QiJ6yhXm/MIYqk5ZG+H
         zCY2hQl9zwod4hgJt8s/b2t3aKG00VGrMdrbgImxzvt4g8Rama5am/rEGfcLZaFtHwEL
         1Wew==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=/9eQ9m3y5ekiaapXKiPu4sMvEGOkQpsbIoNSeJVe6bY=;
        b=Kh1PJoLCW9PmwVeUSbVafgYvTEH+rJ4KkLFFLQYFVEJYpBRohDsW24obNmWiQTT6O6
         6zs4+faeySM2zltBoLL70YvD8jSVP6lYUThpJd4wEMaX0p4vSc1yAsmfODTRBrK9qtSP
         3CSqMKKsezV4PR6EyqcRvYjzSRCl/ozmWm0IxFva6HRLFWCfe1dGFPrea53kzAkLN4P8
         gW/EH5998okE8lxvOtr2HgdvWvYAtbDWe7sTVGjxQuN73bmGVjfA1awJmd9nIGEZTbU/
         YtSJhNPnwKUPk23lsF+RbjOneNezDeaWcTOrqW5VzihY1fnfP/I4cqSUX4UhsV/S8vYQ
         SfSg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=f1IhrCDj;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=cHz69wZY;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/9eQ9m3y5ekiaapXKiPu4sMvEGOkQpsbIoNSeJVe6bY=;
        b=hrO0a+Zq7wc5Aa+P/qig01HqLDkqLWEgqW7+w9XuDfREHODzMK2WINAXrWb5z38Juo
         LzGlu8xHpsh+x6cDlv5tE0SOMz1DfeDFMaGQ4KZCFL+YvMxch7ZFXyD6gC4Ydtr4h9Kb
         NhRdiezuqkzozIT/rHkPFYJvtf8l3ACI7QWang01FacjVON8u98iJxuUzCmITNNGwLXv
         FSqdy/xpREJC3+a3R2YQO8TQXCW5kjj54BvOjIEvJk0xCKHKPpgayZbQdpKnoxzF2er6
         cvfW4rv3YO+ylK0zAh/P6Py5/ptpUsljDHE/s85yPfVx9OiCIMieiUaWhYg/bx5bzlyb
         TI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/9eQ9m3y5ekiaapXKiPu4sMvEGOkQpsbIoNSeJVe6bY=;
        b=y58sFj7QpiQ8zcnGeWirLAN370l25FXeQnaf3JOjM4Bu+Nob2dB9MuaBTevfC+SC+q
         nfPFtSClicXyvr6m1D2wbjvfafixAgPMGJT14HU7Fw4tvE0n8yjmQMqNjea6FvYPYyks
         b8gYocbFzXCHyS5yCyRuLAe1V7plLkQkUTQca8fUUgmiHyPEP5fIUozkqQelBHVU+ejv
         3Y4E76u5AyZZ8utJXaY2wdPJXO8c1FjTR28t7bEJo+ZJQUjx8/xmgn4jDDT5nlwx/qmI
         CRiqM4TuYN9DiqkkKa1pYbE+aPGhpY3Lave210D1fdpAL5R63vY5X7GjUmVRfuYBhqhV
         CgiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531093bMPz9BsCh1ki3bAEFza4xCYn7yVjuDOUpCkFr+47OdNyQ1
	Lfxlu69lD7jecjwl39XOqko=
X-Google-Smtp-Source: ABdhPJzcnY70FvuAJ4ANzX/jic+2yc7nspXwgm4RDtiN0KjjvUVqa+48m7Tqc2eParN3kijQQ61Mrg==
X-Received: by 2002:a05:620a:17aa:: with SMTP id ay42mr2555988qkb.148.1634316040350;
        Fri, 15 Oct 2021 09:40:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:420a:: with SMTP id k10ls2843975qvp.6.gmail; Fri, 15 Oct
 2021 09:40:40 -0700 (PDT)
X-Received: by 2002:ad4:5f86:: with SMTP id jp6mr12179754qvb.46.1634316040001;
        Fri, 15 Oct 2021 09:40:40 -0700 (PDT)
Received: by 2002:a37:270d:0:b0:432:f196:6bf5 with SMTP id af79cd13be357-45fc47fb9e2ms85a;
        Fri, 15 Oct 2021 06:54:52 -0700 (PDT)
X-Received: by 2002:ab0:812:: with SMTP id a18mr12560137uaf.33.1634306091921;
        Fri, 15 Oct 2021 06:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634306091; cv=pass;
        d=google.com; s=arc-20160816;
        b=RJ0WSgBX/Jg+nnfGys/UK9dGtR7Uy8dW3U3B4LJIeG/B9u+JEg32FS2JK4Q26kCE7S
         Eg6I+xpNDT3UoYcdNRKKS+cDoJn4WW6kjvK8zLQblSIZP8hq2uP/uCt4PZxfNlenl4+9
         ncNq2I2WdipgLbcu1G9jwSVA3f25PpRYsPPMsWDjIHIyK+aoy77XJw//1Z1HFUq1L32x
         O+wbmWLyMMHqsb6rinXC3Fks8imTxsDereGgtraKqLZ5w4wMY4HG4KXMFqQjv3fNX1fU
         MIR96Hrb4rTvpabdGmgcJhadVR9c1Vp3n7Q88xJYRF4WZHouGCG1p2UaTpQ6bt48DMOo
         0u9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=pSB5s4oUcObFaMOxhID2yBGsnl323gLaGUkExlzCGaM=;
        b=mxlNEBpqZ8Ui4ebbde5dbgGWnBKPagKH/dmu23fA2Y5q57PKyvOFFS2qtd5tMjJgzn
         6bKzrgEzitFObIUAO2EOw7d5volUzNi8kBtNhkILHBmfXNEsVrgPR9hUZ/GDhvxTRIJU
         BwHeojnCXt2ygkvE5OzA5DSjS9Q2Jh+KTkAN31kwMNCgc3XDeNbnW5xPtwfOfBKjumUy
         wgrkn5A7jlc4VhVAUgNgLEu+TUN0ZHSfEzYak1osCem2PAVR4q1FpeT2hJ8xlaMTfjx/
         M/aZcbHGFkGLKxKDyP7JNvBOXU5AbDnrWmyKjTeDn7rVaIsRKI/n99iEsVlucWkpQzZW
         mLaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=f1IhrCDj;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=cHz69wZY;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id a13si812438uax.0.2021.10.15.06.54.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 06:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vegard.nossum@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19FDiWga025078;
	Fri, 15 Oct 2021 13:54:48 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 3bpevahepg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Oct 2021 13:54:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 19FDoZsx065082;
	Fri, 15 Oct 2021 13:54:44 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
	by aserp3030.oracle.com with ESMTP id 3bkyxwwxw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Oct 2021 13:54:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLZd9YofObreaKXWle6HF7WHAdQ715MB3DAhQJajWghRfLOG846kVjpbt7wmy/Mj5czOtb+Hh0kWswvtwHArO6MBPZ1jz2cbFw7PafYJOPaaeFHauxUbCxz/pQi/J4Wba25StTi8OLJtgVNzdnD2kuUWR8n8ce/k4jsUXnMI2zqgiT+I0wZ8EUzJrhGXfegb76fGQ6kFJvcgh/tkHBnOXXQSVI9ISpLIKJuyBVcPXmf/jzfJPd31tnuXzA6vUfzwjYQF+0vDcUSSeeRb72tkNtj7XIaYm9IRxRT5rCDpzlr5jrmPky+Rw7k7p4jTJbVu+JUVP5ygd5Uyc9cEsdJJ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pSB5s4oUcObFaMOxhID2yBGsnl323gLaGUkExlzCGaM=;
 b=DDLXTznmRuZWqjzJDmjdyPwZg8q1LyH7zQ9Qt1iTigGCGA4xEYV0b928ysQbvQzWvuYd17Kt+FciFTIKYt8H/El1t/RFgISHJ50026OySd1SsMU1H8k1p9QdGCftYzGK2LJfYtsZ9DtBlFEFRVd40U4YX6Kd7uH5YQTmPpUdu4uLsulgeQZK36IJoDKAx5JV8oPA6+1kg8E2ZZWBzSRxcEXZgo1GfY77TE2nbeLEWvbhWqKjU01w8UeFF90ecKiAiWKFtAmIY8Q1k/IOULv82mhncd1xzol6LPEJGNcC4ofk/0QcLw+jjdn/RwTqEoBI7VZGAetbVBtTpNl1inup2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB5433.namprd10.prod.outlook.com (2603:10b6:510:e0::9)
 by PH0PR10MB4776.namprd10.prod.outlook.com (2603:10b6:510:3f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.22; Fri, 15 Oct
 2021 13:54:42 +0000
Received: from PH0PR10MB5433.namprd10.prod.outlook.com
 ([fe80::958c:1aaa:ad5:40c6]) by PH0PR10MB5433.namprd10.prod.outlook.com
 ([fe80::958c:1aaa:ad5:40c6%9]) with mapi id 15.20.4608.017; Fri, 15 Oct 2021
 13:54:42 +0000
Subject: Re: [PATCH] scsi: libiscsi: select CRYPTO_HASH for ISCSI_TCP
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211015131115.12720-1-vegard.nossum@oracle.com>
 <20211015133635.GA26418@gondor.apana.org.au>
From: Vegard Nossum <vegard.nossum@oracle.com>
Message-ID: <3bba3fed-b8f8-b7ce-f26f-8d1ed221144a@oracle.com>
Date: Fri, 15 Oct 2021 15:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20211015133635.GA26418@gondor.apana.org.au>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: PR3P189CA0033.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::8) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
Received: from [192.168.1.13] (86.217.161.200) by PR3P189CA0033.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:53::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend Transport; Fri, 15 Oct 2021 13:54:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de191db6-c686-46a9-359c-08d98fe35632
X-MS-TrafficTypeDiagnostic: PH0PR10MB4776:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB4776DE97AA263EA2837A982897B99@PH0PR10MB4776.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ODZVuiVcXbLoSxbZ4li24eNdsi5ay8iLwlaUARXqoMZuCh6TG4gSOyN9DPKYWdA+WBugXBBwX5seA55eUqzccVtitvelaE08h8O/I7aXpbAOXBxnoR8bR1D9R/GlTBCMJU4N4TTD0a8Fze726aiLwkAJUeB3c+oNhvtYnLlJECkyw6rSeCvAsreFsMHZ9jyk/BlxVJreKKVt+j2Mp830WOXiUmjcQt/8TUAreBhNnLD4TFTiHwDW4LA2qSkJIYuXsRSwHYqKX6+869t4l4ZFjcTGgYzb+37qAjin6imnncEtvbwikp7JwFeiX6ciJxg9aRUjuUaafEAlEXWqO/CJOZIG2L0staBXqCPsOb2qL6lQEer+ps2eTngJwq62/fWc2I8nyHgd2VTuhKCKrmVkjOum9Lb2DobswrNYqdY+W/BZXRutthLmX59peElvGHDKkLvBM8D2DhiF366zxFYhtkl+hC7BClYdLIVDi8c6GgVylBsXHsz6j98HvfBxmxUdNT7nDg1IjYOGQBiqQk1UkaxWPz/Y1ZgUThBpekdbETLHSwLHPhNQ2+mxmBQNg1KWPYlheBfbnjRwxJG0TJVaHbvtWrSsfy63LlVw1Je8xqXfRf9WuQiI0fXptDtfY3RRFh2jv3ul6ky1x9/BsN+ULbV2nD10EDxBCRnO8eXh0KX90hsiERXNQTywv/XW+QQaacrVBlFFkytpXHehGDeUOAjZoirpDS+s70YewxDAy6LQUyABuJMNIe82jtGGmX4i1xY0zpWcp4I4z8DjCEg8+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(86362001)(16576012)(316002)(54906003)(6486002)(6916009)(38350700002)(8676002)(66946007)(53546011)(36756003)(31686004)(4326008)(6666004)(186003)(508600001)(8936002)(2906002)(66556008)(66476007)(26005)(44832011)(38100700002)(956004)(31696002)(52116002)(2616005)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2VlOFY3eU9LS1crSExwakxOSC85Y2NxWFN4N3B2ZEZGRE5qa0VvVldvVHQr?=
 =?utf-8?B?Vk5lY24wMXRneU1XclNZeHBEVEo0THVlb2RoYzc5RjlEa2pCNlZwR3k2Skov?=
 =?utf-8?B?Q29EeUNORlUvT1NORlJMZ3FJQVpGTGlhR1VZNU5Jb0daTkhmaEVOUHFtcXIv?=
 =?utf-8?B?ekl6UXR2K2JHRlBsVUU4Qm5tdWFQOG1rS0dJYnZJZ1RsV3ZOSit3V1E4TmtJ?=
 =?utf-8?B?TW00VmJ0bmE0cEI4blhBaW9sZ3A4U2cxSGVPdTZDUTRQb1l3MkZ4VjMwM1Fu?=
 =?utf-8?B?WjA3eDZyQjQvTy9xbU5aa254QVhlK2xPbTJIUkIrNnJJWDNiZ1phd0NHcml2?=
 =?utf-8?B?bE5qOUJ5VGJ6eTdIQURvRmJDaS90R2RDd0hMMlN3KzE4RUh6aXBNZ3ZFSGdv?=
 =?utf-8?B?a2Mwbmg3SFppYlFjU001T2Y0K04rcHlQcEdkVGUzdWpSY3ptL29kOUNUejJn?=
 =?utf-8?B?ck5kSzVqaTc0b2FxYW1ZTCtyUndkTHRXdFZQTGRMMllHdlJMSmRsUktxRG1X?=
 =?utf-8?B?TXozamJ6U3RTSXhxaXVwZEpzcEpJNXJZd3U1d1lFdmhKTlRYTm1KSzZvdHF5?=
 =?utf-8?B?dFF2TDN0UWw1T3U2akFZTUJ6MmNTZnVxaUE5dnp1eGgyaEMyei9XZ0xhMTVn?=
 =?utf-8?B?MUk0cENCSUc1YmUvZkVXSGxkV1BudGk3Y21MSTNJVndJc1BCN3J6WUlFc1Ji?=
 =?utf-8?B?V0w0bUNUVzE2SytkcWgrZlorMkVYeXgwUnJEYVNiZGhQdVBDL1pTdkVpdzhv?=
 =?utf-8?B?bkQvMTZvL2dGNFpFYWc0Z3VFRm9wVEtZRGFkTWxDL3pBczlndFF5MUpwN01L?=
 =?utf-8?B?MW1IUkxIeDlXZkZBbnZOTkJNd1ZpVFFEU0NwQTlMazdLdkdXOEdra25Oa0hM?=
 =?utf-8?B?YlJqcjVZV0tIZ2RHbEcreUVjTkxKYUtvL0JOVjhyUWhXajB2TXNrMzZ0eURo?=
 =?utf-8?B?akF6S0NUOEFUTUc4aEJjUnJxdzNQbEhLNGNwRWRCRFcydHBJTlg3Ulp3TzRZ?=
 =?utf-8?B?TlU2cFF6RzFrWFNobDNDeXpGQXVtdFViTnF6ZDZXUFVEVzk3cEhQSzZvWDF5?=
 =?utf-8?B?dUZ0ZmFlK3dYUHBCcFE1QmlESDFEV09SRXRFbWRkRGZTMGFYUU9JM0hUbU9l?=
 =?utf-8?B?LzlNQm14RGZmSW9aYXRCa08vN2RtZEF0UTE4d2JXak5BdmdJeDMwRU03ZWJm?=
 =?utf-8?B?Y2EzdnZmaDJsalcwR1czM3Vsc3g0N3Iya1ZQQk9ZcytjdGtKUmFzb0JoZ0la?=
 =?utf-8?B?ZWNNLzVrTnpkR3JtYzgxUWJqQStsYzJ6UFZqbDRMSnpuOHArbzNoeXZtQzdR?=
 =?utf-8?B?TlVvZ2tZdlc0ajBtOVBIeFFZMkgzeENlc0ZCK2VjOEliWlNidTFEcVRzeWYx?=
 =?utf-8?B?eW5PQlFKMVpxK0NBMnE1RHpjeVIveE1oZ1p5VmlhaHQ3b05tNnZhUHRYUHpa?=
 =?utf-8?B?a3VBR0d1RUtOa3hVaitQUzhmOU1xakxBMitGR3hvc0tBRGRMdWZ0UlI5cCtQ?=
 =?utf-8?B?aGZFeE9zREEvTmI4S3dFUGhCbWt4N2M5b1pGYmRVWERSN3dZV1JVOCtYemhQ?=
 =?utf-8?B?YloxUnM5QkRFbWlxd25JN1FDQW1XQ2ZJaG1EZSt1eTdYTFhtUHdwcHd4K3Jr?=
 =?utf-8?B?WWpQSEgxTUVXSzZTTUF2V0J4Z2ozRmRDelc0TXJ2bjIvWUxBeGlaVDZqQ2Rw?=
 =?utf-8?B?ZnhCck82NVFlSUszR1hkOHdvelNjTGJkTERTbzdtODZaWEVXRGd4bDJ2dmF5?=
 =?utf-8?Q?q82Gywr/PyYcDDkHVYjv6uGtlaINyX+jxQegU6c?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de191db6-c686-46a9-359c-08d98fe35632
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2021 13:54:41.9818
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dEOIj278rj5LiTRmb2AMvDrB1Wwadm52oamSk1iPaTBB0PYtUMxPchfLLPqcSzpwaJok/V6xWY5QVxPIZkoAGhRDpFw9VoPkVMrMHq+6Vfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4776
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10137 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110150085
X-Proofpoint-GUID: RKgmUITyZ1pxTyI-frrf84Koc9m5TtWq
X-Proofpoint-ORIG-GUID: RKgmUITyZ1pxTyI-frrf84Koc9m5TtWq
X-Original-Sender: vegard.nossum@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=f1IhrCDj;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=cHz69wZY;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of vegard.nossum@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=vegard.nossum@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


On 10/15/21 3:36 PM, Herbert Xu wrote:
> On Fri, Oct 15, 2021 at 03:11:15PM +0200, Vegard Nossum wrote:
>> Fix the following build/link error by adding a dependency on CRYPTO_HASH:
>>
>>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_dgst_header':
>>   libiscsi_tcp.c:(.text+0x237): undefined reference to `crypto_ahash_digest'
>>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_segment_done':
>>   libiscsi_tcp.c:(.text+0x1325): undefined reference to `crypto_ahash_final'
>>
>> Fixes: 5d6ac29b9ebf2 ("iscsi_tcp: Use ahash")
>> Cc: Herbert Xu <herbert@gondor.apana.org.au>
>> Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
>> ---
>>  drivers/scsi/Kconfig | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
>> index 6e3a04107bb65..09764f3c42447 100644
>> --- a/drivers/scsi/Kconfig
>> +++ b/drivers/scsi/Kconfig
>> @@ -290,6 +290,7 @@ config ISCSI_TCP
>>  	tristate "iSCSI Initiator over TCP/IP"
>>  	depends on SCSI && INET
>>  	select CRYPTO
>> +	select CRYPTO_HASH
>>  	select CRYPTO_MD5
>>  	select CRYPTO_CRC32C
>>  	select SCSI_ISCSI_ATTRS
> 
> CRYPTO_MD5 already selects CRYPTO_HASH so this shouldn't be needed.

You're right, my apologies.

libiscsi_tcp.o is built for CONFIG_ISCSI_TCP, but it's _also_ built for
CONFIG_SCSI_CXGB3_ISCSI and CONFIG_SCSI_CXGB4_ISCSI. I missed that when
I looked at the Makefile and wrongly assumed that CONFIG_ISCSI_TCP was
missing the select.

I'm not sure what the right fix here would be -- should
CONFIG_SCSI_CXGB[34]_ISCSI depend on CONFIG_ISCSI_TCP..? Or should we
add those CRYPTO* selects in there as well?


Vegard

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3bba3fed-b8f8-b7ce-f26f-8d1ed221144a%40oracle.com.
