Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB3P56ONQMGQEGSO5M6Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x38.google.com (mail-oa1-x38.google.com [IPv6:2001:4860:4864:20::38])
	by mail.lfdr.de (Postfix) with ESMTPS id A01826341EE
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 17:55:12 +0100 (CET)
Received: by mail-oa1-x38.google.com with SMTP id 586e51a60fabf-142a7a82700sf4674561fac.14
        for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 08:55:12 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669136111; cv=pass;
        d=google.com; s=arc-20160816;
        b=e1RIpTBprPNomZXkOEs2wkWW74WWnc61CAVpcvj/ZhrlzIG1rO/+7xuJWIGtuFWi8A
         n8lwimPSsNwkjc3y4UIlm1tqOQRIPsJszF85DeCAPyYSu4p1R2/hVBVoipIsQKOkRp3X
         iyOQF3MjLJ1Yt7HaZTJ3hbjYn6tnhWKFq+HQbTSmpjNARwFZazl/VK/kD+QDqMK2i+Bq
         9x5uOfuN0s02iE6a0XrFO7AmC+zb1SKGwghrw60KGUIiNYU0EF09h5d/XxcP4rfIU+l1
         bxlVD3bytFZGDN0Pq38UNSJAqcwFC6MUkoDxj+IbuhbgYgcBTBQ/c0B2CbcvYdla7IYe
         M2ew==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=YvayaTua5+GWcyGnQ9hrhZSR2eDAJXa9aSDyxDpMjDs=;
        b=nvf6cs5bBjSqMKtGf4XwpadCFeWxUU0cXzZhBdQdLQxccnA/xtZywrAbw8CQL6bt7L
         4W21KI1m7OMnqN+bkv/hZeGI0jiP/OFj7gVnnnA2mM3uW6aovzRRTIH9vmr7RcA5glno
         vcFBJV5gptJRg5ayWegSyILzJnAN6ioYa2Tu89cABhCkcT2xB1Wj45Yn7NZehUuSbKhG
         eIVmTfITbac2wwcsu6fQWCJhI1MmdTAZQ0w+VpvqBhDNCCE7E1ky8E5HnZ61xxeThcik
         0yvcCtvyY3RtzkLX4CsiAMOD1JPBhVFkuZneU6owoOB0Tq+xVfpp1U5hcy0AwvypY/w4
         I54A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=sTLyJg8L;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=iXOXh++i;
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
        bh=YvayaTua5+GWcyGnQ9hrhZSR2eDAJXa9aSDyxDpMjDs=;
        b=rrY5eqzL+Ycki1FnKNpAuci/LzJOcUnSZi1rJ86+yk1lg+tTvkDUHms6R1b4kWBaCX
         cRXK+a5iY59OE5s/L/kMCC95NTUBwj8OYz3m0aPJ35guVU7l4omYqtw9N/q96xnyIXnd
         lMnvutEWbwaSr9LmJefiZEycAUNUS343lYemPJQ+kiFtrSdxFQ89CrIPbJkJ7yy7ATOe
         KPwCar9JnUBBBSXCsWfRteroMENh0Y/fVhKuwiY+UHshasD1VM9WFVBKiQziEDJZju9i
         Kk/HY0ckUrruN3DC7meuNVKdbdbr2LY9QAYDSq8yZ9LamJCs5AM1MoXGvHO2arfgIeRa
         EVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YvayaTua5+GWcyGnQ9hrhZSR2eDAJXa9aSDyxDpMjDs=;
        b=qKKwN4k45pDeLcjCtvXhmxrVGP7ldy2rFU6IditXv+K4LwRabc7mAHpAJQLp7rcA/4
         0gc96uu5LU/T/5ZEE8xX/GVjcQXiAFfisY0kgyIxdTPagpioC69DHS0MEc0fXKO8/p2s
         +kBAwG0lhEU4RbHjYS1YxlnP4a1qyNML3SY/cCwki4tPCt1zv7J+G41bjntK26m5QDkW
         8fg2ZvQpgbRrSMKn+wx1HbqaXDvInPXEG4UbsEZnHejGS4TgYnAMUOoRuzwFJlho+A76
         eG4ZmvGhHZB9kZ21s4h0iR7X5jJpvayLOM13bzskRvtUvW01LQ5LzC312Q+KZBF2pzry
         Hdkg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pl19EjUUZyXMf5VrsEGG7MvLiW12ifHyZSHE87S/xe75SwKvhM2
	aj6KNGEyambgKCXEY1onND8=
X-Google-Smtp-Source: AA0mqf5mSxx6XI2HeIahsh18FSWukGulkbq2YAHt08dre/60VzKfhnbUZQSisJG5Tq7VZrftxpuAkw==
X-Received: by 2002:a05:6830:1604:b0:661:ef0:230a with SMTP id g4-20020a056830160400b006610ef0230amr3780241otr.235.1669136111050;
        Tue, 22 Nov 2022 08:55:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:e142:b0:13d:173c:e583 with SMTP id
 z2-20020a056870e14200b0013d173ce583ls5045972oaa.0.-pod-prod-gmail; Tue, 22
 Nov 2022 08:55:09 -0800 (PST)
X-Received: by 2002:a05:6870:7d14:b0:142:5f10:7f06 with SMTP id os20-20020a0568707d1400b001425f107f06mr3962890oab.56.1669136109086;
        Tue, 22 Nov 2022 08:55:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669136109; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjcwg6JT6EKsCutCRKAkkBFU00uPyAF+seJnbZc1AuC5KzwvlKxapCejzqtpgIlzgJ
         yg6uHw5JPGPJIOcDsFF7ek/IMV2JAtZYF56QGZHbEUD9Xedukxp8pCmLH40iMxl2qVyz
         yeanHpuUkGwru51NpfmprgE+g7Wjm6n3q3bSqNBKrmSpAZDYgqT1Ydec+9Ell+oNoXAn
         d51fHAvSyR8O9hh+9TDArbqVCfKA/UOSuDsqCAdALWKvL9PKetY7bflMYx0NYoICngdl
         dHj7WZHYThD8NM6VawFxWVfDyMTqr4oyX08ElR9ljicWcGOIGF9zI5yOyMA75FfuLCxF
         9BXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=Tw9of+dYIim6F3cNycDnxPn42jyhEUTMwrh9TbfH5fQ=;
        b=mNmpstaDmj3aPGifWlveoCx173fxk/5yg/zBdhMj01zJvn9euvdtTT3ePvdtII3+H4
         7jk1mt3pPxDCdDSzyFEuuqFDRH8me+wL0b97aHp16fexNEtzXujZGzmgKZD6ASVIpkxG
         DV77w7ctpUCClTFnJrQ8h7WRVVF2m4aFkcbz/yQ5ChA2W5d8yvUY/f0T41o572E0VMH4
         btkn2zE/Fusp53TrBXqzGa2Lqhx/uBaD//95RImaYicUwdM6UAtTsSSSv/7Y0ZtCbOd0
         xWqM2SzdiAQId3U0e9DBFpldi1ij3iCWtmpV9Xkup4IhvPeEtTQU96DxAxnkD3QLovzH
         OsJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=sTLyJg8L;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=iXOXh++i;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 100-20020a9d036d000000b0066d4de41c01si898213otv.5.2022.11.22.08.55.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Nov 2022 08:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AMFUTKV002323;
	Tue, 22 Nov 2022 16:55:08 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m11498bdr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 16:55:08 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AMFrmE9028988;
	Tue, 22 Nov 2022 16:55:06 GMT
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2048.outbound.protection.outlook.com [104.47.73.48])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnkbf4ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Nov 2022 16:55:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VNhcvhn+sfCOK5LJ5ThlZG6O2SDuknwPuKcOwAOt67+uViVbuairaVKbEhFg5qFlXemEgPpasCT2kC3R5jjVVWhHrFcgXhxC7yMDEEB1Uybrpk8Oqh13mR9Tfa1Od4p/SzqMPSQumXZhivyXI5YbFzn/+GLY6PBx1MPMa5a43/Xxbr84zzPKwm6qP+bbZdnQt3MamxDLhnFblFEmDVS2C7AmR4ewoFG3Fkti2e8onBtwHw2tFwhb/tGMgz/HVxrNH8XG+tYLKKfoXnrpUdLr34QxQPkoQDXcD5N0MoEFGPEZwFy6QOvZgpm1vHExxkM28XwX91GBx7MBThxlWVIckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tw9of+dYIim6F3cNycDnxPn42jyhEUTMwrh9TbfH5fQ=;
 b=NeCqJJ8/7IXdsxJwkf3cpFRhFUph2YvbXvuSOVpSshTlLpJeKLFI9YiJzytx53O/8z1H4Y9nUmwITvWuN6GsgFIOnQfOFKnvX3FUN9C17jO+lsjgrzquwHqBodg8KGDcBUPeDEHWgsMZtofgNx7QqBSb7REHENqWo0im4/xnr0l/uZlC7LdUHclvTwoMaRINmh9FVWbRtp53l+MOd4BZTpY9yu7eXPNKUZwCeS5+z54AF1wMUmmMWOlChFEky+w3VKUuFWd8GkhMrNyRSfDYx7tSKlZcUFAtJRK3ly524hkcMbVyY98t4c9wIp2fPH1EZ4jaTYQeXisCSkxeQjqCXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BLAPR10MB5202.namprd10.prod.outlook.com (2603:10b6:208:306::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 16:55:04 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df%7]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 16:55:04 +0000
Message-ID: <9aee9ea4-9644-3f77-4dea-11784868c885@oracle.com>
Date: Tue, 22 Nov 2022 10:55:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
        linfeilong@huawei.com
References: <20221122181105.4123935-1-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20221122181105.4123935-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR16CA0015.namprd16.prod.outlook.com
 (2603:10b6:610:50::25) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|BLAPR10MB5202:EE_
X-MS-Office365-Filtering-Correlation-Id: 9acaaffd-fb96-49dc-e658-08daccaa4d90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zXoocr6w3SDOKmDD2XLpdpZAVUon7Qu1bH5j5BvQy3aA4nOFl4zGJA1QoZeX67nK7h63VwT//dAaEDt+XSg1hmw387Dkk4IMA2AfE1Wfpq7cE0/h5PqW7vCtgdoMgA3y/S1SNzbCYikLr0pd5FSRihQGhAYHTklZrW8eYvs1P+QONXznKCSysdkdZcYkVoc5GZmqKOR4/oEzeu/Vxl8YiAWshYXMlSICJzpf2rceadjqWnYCRf9QdY2Kxb3zPb0xVNKyqFMQDL0XXPSm5HNUOlbPkdPZhIMDrFu0PEwrOzvsaApC/1cMngAA9Aaz8xyVnbk9G4tYxrwCtasnO90ACFAZdeuZJZogBqMFmTHQz77MNwRh8aFadxttahq3XruUcMGQdgyALJvvrtiT0/PnELf7Sf1ADAUxaUHMjb4AYaAooZSl3PP/PhADzcDtgbc5szEN3ZezJgjcmLIFbGlI8t1SQVxewNWWjVfldtvAzcMTJLGTXnmSKXFUEFnA2x4x7LMW7NtyTTc3z4FV1mU0G1OYVWdPUQjqvxXWj5MuCUQa2iUHrV0LJ5W4fgQvqNuMPxdvb/2B1fUTXISrBtmkQz1+ryXbYg984vkEgEs82ldV/JRHpIzumoNAc+m4c9Urh23uHi7LKdZhwYOPKf8O6+JALc7FY/ezFgua7tPfRXbUMyIFng0Bx/EwfsFehfqiYadYCaGPzhmr+Dy1SFyVwNgn7x+ystiB38Uih8D1YC8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(346002)(136003)(366004)(39860400002)(451199015)(38100700002)(86362001)(6506007)(8676002)(31696002)(53546011)(26005)(186003)(5660300002)(316002)(6512007)(6486002)(66946007)(110136005)(478600001)(66476007)(4326008)(2616005)(83380400001)(8936002)(66556008)(2906002)(41300700001)(31686004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2dlUkdlQU4rVDNEVDZFbEhzaFJZeU5ac2hkYmh3QzhuZzJ0NnVhZE9KSVJ3?=
 =?utf-8?B?Yy9FUjE2NFpkN2JzUGdKQ2k3K2o0anNMRHFlRnVXeC82MGpTSnZnUE1pc2xL?=
 =?utf-8?B?N2ZkUEVZUVQyVWlDMWh2dXh1bndvTnJuaWw1OFRkSzNFSWhQT1pxbUo5dENn?=
 =?utf-8?B?Qm5NT28zdStDMTVWNkFtTjdrN1hWUnFmTFZaeEphM2pna3Qwc3RudWpXb3Np?=
 =?utf-8?B?cllXenpIMDVGOG0rS2lOR1JwWi9VdFlaOUFtVWFWTWtINjc4YjROcHF1bU9m?=
 =?utf-8?B?dDBScWZlbW9wVWFtaUsxbjZnWTVaaytnQVZLT1FHaElUa25pejNWNDlzOWFm?=
 =?utf-8?B?eHh6M1NZV0tMSzdXQnZqT0RTbCs4S0R0amxQSmdJMmd1eml5WkUxRDVwVFp2?=
 =?utf-8?B?VXc1cDZURi9BaGJPRlJkbEpDYmlkaFpaRk01UkJSc0xyTGFuT1JQc3crYi8r?=
 =?utf-8?B?S2I0ZzdKSUVPWWYrK3lxNGhCU1FjVVdqclpFdXpIdVd2dWZ5bzZNMjBRZEN1?=
 =?utf-8?B?ZlZNYWxjOXB6Nmhic0FoOTdNdm9EdGxSMVZiNkxVYkwySEkvMlA0TkpjS2lJ?=
 =?utf-8?B?bU5idytGREhxN1ZWdGY0c2xwYmZrWGFNMkg5NHV6Qkg0dFcxYlBRY29jNnRm?=
 =?utf-8?B?WmZpQVpDcS9Ed1UrRUF2Z3N0N3RxYmRrTm9VN3lzeVNMRFZ2UktQNGdSUDl0?=
 =?utf-8?B?T2lwN21ReUNkaWhKRzRLU253MTErVUNhcmpMVVEzeU5LQXQrOEk1TU9DNGh5?=
 =?utf-8?B?cFh2aVdzQ2tVUCtXbFhMWTcvSG5GdUFqd1VSOWFuNGNWR3FRVnBnTGxFZWFH?=
 =?utf-8?B?MHczRkRBYzZQaGoxYUxuYS9EOE93MHhLZ0hlMG1qc0w3L3VuT1JuOXBDcFRo?=
 =?utf-8?B?K0lDZjFXaUJXNVpsOG5sY01ZbTlkUHBaQ0YvNTNVdTlFd1B2NXRyRFMyaVUv?=
 =?utf-8?B?RVhOcVMrUXJXM1laUVRmY3JlWVA2clJvVmZ4KzRxWm56aVhELzE4WUdHWHh2?=
 =?utf-8?B?SXNEUDBkaVRXb3BONFlvZ2ErRWxRQ2c0OTI1cmd1TDZ1L2hJOXJ2aFlKbHNl?=
 =?utf-8?B?TlBaOENFSTR3T25kYkNOd0lXeUdkL2NBTm5IYllaNGU5Y1RUZ3Q0S0NsQldv?=
 =?utf-8?B?MnltZnA4M3lCbEFSSkM3OExMemhOMVR4MDlQYTJEUGRkS3BaSE02eTRXaGZa?=
 =?utf-8?B?VDdFUkVKaUJqcnM1dHVLWkZHaHhiZWN1YWI3V2dLbk9EcXpPMmltTk1DRnpt?=
 =?utf-8?B?WEVxY2lha29UWkxOUHJEL0lIcHRlSHdmSFVtd0FkbFM0RFBDV0d5NzBZTEdy?=
 =?utf-8?B?U1UyNytVMi9BcURtY09yQWQzRGdmbktzNzdRVXdEbUEwalU5V1JRRVUwV1Bh?=
 =?utf-8?B?c3JhVHViQnpoSkUzWHRFQmt0M2lnWjZwWG1jUlllZDFxRkc3RFR2U2hzNldO?=
 =?utf-8?B?UkUrUTlGMmNKQnRFQ2dDL2MxNGNNVDcxYnJFSkNuU29ZaElUME1HMDBjYnpQ?=
 =?utf-8?B?ZlI0NUpiZ2RtWng0TzZSWmJEQU1iVFV6Q2VVK20wcnJ5OEljYkFOUnlRVEZ2?=
 =?utf-8?B?anFLeHgrNThhSTNtWThLNnhDMHpxWkZWdnBTSG03Lzd5d1ExTW5teWN1Y0NF?=
 =?utf-8?B?UGF4cFFNYkhxblZBWkc3My9VbjB3QTBJNVcvNEJLT0VqZkVOS05mTGhJek9T?=
 =?utf-8?B?R1JIbzNsQ3oyWXd1UXg0RHQyVlB4cm9IMFdZMFpMUEVYR2l6eStEUHJaVHIv?=
 =?utf-8?B?T1I2V0FvR1EreXZISjg1ejA4cDZLQktadVBQdm9DNERXOWRESVpVTFFLOWtU?=
 =?utf-8?B?L0VJUHlwN0NidmwvUzZxWXZkd1ZaTmRmbndaQUFDV0UvNSs0UlY0L1c5RHlJ?=
 =?utf-8?B?UVBsR0gwenBadkRPVWZmM1ByRW5INEVLcVRZbGJMMGRVaXRKT3hlN3ZYempG?=
 =?utf-8?B?WExIeVZ5NEFZbXF3azFTMkdpSzFLY1NwVURxcDhJK2YyTDViazc4WFhiVHl3?=
 =?utf-8?B?NVpVb3lRMHVIRXlaeURJKytGaEJFcE5yY2lhMnJlaGZKSFR3SERhYmZ4RXdX?=
 =?utf-8?B?U3dOMzZXblY2NUI1WHdxbm16V0d4L21OZXlxK29sOThFSTZ3SFBrTGp5bUlS?=
 =?utf-8?B?K0J4bVAwanlBaHM1dmRqYkFTRXdXR3R0M0tSSGJmM3RjaVpFNHlpZmtZZlZB?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?QTVpQ1hlNWdNbUxLTkRJbkp5UFUvbW1DWGtPQTFyY1g0NHFZU05lTmM0ekNv?=
 =?utf-8?B?MHFhb1JrWmVWb3IyR1c0S3JDUFAxQTZndzRnOXR3YjBac1J6ZGtPbFZrL1BG?=
 =?utf-8?B?THFCSjdxQ1FueE0rQkV1TkpYc0xDVUhxR0NINW40K3RBSDBIOVFnOFlPeHNZ?=
 =?utf-8?B?VTBabTNzTytSZU8yZUptWkppcUZIWWlaY0hIaFB6UU04M0JWVVVLdXNJSk9a?=
 =?utf-8?B?a2t2NU9sR09Rb3BMQVlzcUxGaUcwdnZFaGM2N1dyQmNXbEhhekl3bytiTmkr?=
 =?utf-8?B?ZThXODE0alZ5VTVGUjI4T1o4RVNOSE9kUm4wMlJ6Z1lVOUxMeEFCQzRESVIv?=
 =?utf-8?B?SmJyUEY0QjdXSmg0QitxQ21ISDRoUXdwbTNadGFqenBYQkFsdFZXM0crZXUz?=
 =?utf-8?B?L2M3b01pOWMvNXNJdzE2cU1OOC9jZzJJUFBUZlFZKzN5cG5mbWN5WGg0R2J1?=
 =?utf-8?B?RUFmZzZSbEcrWUp2bTZ1WldreTZHdUpUbHB4TDEyUmFGUGdPeVhOVytCS2w2?=
 =?utf-8?B?ZldFb25YSjVuMGp1V3FBc3o4bk1makRDMTg4S2VmTTJsOWs2SUNMK0pLa3Uw?=
 =?utf-8?B?ejZ5cWZOcmpLMVNjSjlHZ3J1ZHB6OFd2eTRHOFVOOE5PcFVabWlvUmo3VHpj?=
 =?utf-8?B?ZDBUWGNXRzZKcVFrMFF2aGxuSWd4Zi9lV0hFSlVZOTc1N0M0SWhvb05iTEZL?=
 =?utf-8?B?SVA2REpXYkdrYzFteVBWaFFFR2QwWWRNVFQyNGpIS3Z0TVVSVjVPalhlNHN3?=
 =?utf-8?B?My84aXJXUG1keUgzYVhkeDlJQ0c5cUVZYW9nSldFMTdNSklaSlhpanpvdGVC?=
 =?utf-8?B?cnpBSFBqdVByWGlzUGlYMHpvbWxsMGdWMEUvMnVHb0tqMkNCZDNlU24vQkpm?=
 =?utf-8?B?cFBZQnpwVDNTMDhoeURYS09UZllKRklJYUw3S0gwMXdxZHJNWUFDMmdVN1NH?=
 =?utf-8?B?VGRsQldjVG40WFQvcTFrNUszMVBRZERUbk1kaWc5TmRzaEtQd2k3YnZMc2xO?=
 =?utf-8?B?d3dUQkQxSXBtcDJLUERtU1VqQ1A1Z000L1IzeVV1MzVNZ2hncEZWQ3U3UHpH?=
 =?utf-8?B?L2lmMVNHNUlBUWF6cnhTUUpIS2tNQjBEUFBUMkN6YlpuNTdwVmpRQ0VqcVFX?=
 =?utf-8?B?WVNYUDlqNkpvdFgxdVJ3cFZIbzd1ajg0QmpUUUVFVTN0TmtWZUkwb0dRUWZT?=
 =?utf-8?B?TlVXR3d5Qm5ZcjZkVG0vQzkxVDJuVkI5WUQydkIzMk5GM0F3dWpTdWQwSnNk?=
 =?utf-8?B?WStvSEN2K1VYaDh3ZEthMWVVVDlXZmNreC9yQi90ZVhPTkFvNnBLMlJJamN3?=
 =?utf-8?B?ZlBqOU0yd3cwUG5NWUhvVVN3UVhZZGJ3a28zZGF3VW13ZGxqZURTR0gwVVdF?=
 =?utf-8?B?Vko3SXNiaWxqNUE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9acaaffd-fb96-49dc-e658-08daccaa4d90
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 16:55:04.5914
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jX7gdVqhU7zDnoAxiqMVh7jU0PSpOSG9I+S0nfTbZ3HZG+fN0WrgEoyI0DDehm+VuK/CSfJ5vjuORg/yJpXUXGswLQOrZepx8cOj19fLakA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5202
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-22_11,2022-11-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211220129
X-Proofpoint-GUID: f7cTDSkrwLnIbFilVLVkN-yWmB3SlJgh
X-Proofpoint-ORIG-GUID: f7cTDSkrwLnIbFilVLVkN-yWmB3SlJgh
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=sTLyJg8L;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=iXOXh++i;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/22/22 12:11 PM, Wenchao Hao wrote:
> There are two iscsi_set_param() functions individually defined
> in libiscsi.c and scsi_transport_iscsi.c which is confused.
> 
> So rename the one in scsi_transport_iscsi.c to iscsi_if_set_param().
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index cd3db9684e52..c3fe5ecfee59 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2988,7 +2988,7 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
>  }
>  
>  static int
> -iscsi_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
> +iscsi_if_set_param(struct iscsi_transport *transport, struct iscsi_uevent *ev)
>  {
>  	char *data = (char*)ev + sizeof(*ev);
>  	struct iscsi_cls_conn *conn;
> @@ -3941,7 +3941,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>  			err = -EINVAL;
>  		break;
>  	case ISCSI_UEVENT_SET_PARAM:
> -		err = iscsi_set_param(transport, ev);
> +		err = iscsi_if_set_param(transport, ev);
>  		break;
>  	case ISCSI_UEVENT_CREATE_CONN:
>  	case ISCSI_UEVENT_DESTROY_CONN:

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9aee9ea4-9644-3f77-4dea-11784868c885%40oracle.com.
