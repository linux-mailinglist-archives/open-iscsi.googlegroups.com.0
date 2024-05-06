Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBA4G4WYQMGQESEQDMEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBA28BD687
	for <lists+open-iscsi@lfdr.de>; Mon,  6 May 2024 22:52:22 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id ca18e2360f4ac-7ded69927d4sf260044539f.2
        for <lists+open-iscsi@lfdr.de>; Mon, 06 May 2024 13:52:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1715028741; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3Yr3o6U5bfssz8OX2gDHl0E+rTRGLHOi4DsdZls51KdFM3aVCFgW8jyaT5qbiLgo2
         58blrTyVY3bh9hOSbOyDsskP7i4URXB0JAehueh2IF0YQHokCZKfg/fePDqK0gfAcSyc
         aPOERr8IJUTFx4PYLvEjLL5xmAJRx9phbtz7PA7/1e4/HutX9SUnJPMbKrRhr0kgyE4N
         uxAvs8cbObQTKejfasJ7qOyXoBrAoZyzFJVC4OHj7Y7BmnLwuqugzOwx8iHlJQfCFk14
         ncGurKxMcPBY5TPd4Jt3JJp2zfApQSBN+Sh1v61C2JAYd3Jz3JnahmR0qWjZ3JsIZp/m
         MWIg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature;
        bh=l4Xf+LXn5zwgguK9OhFADpzGujeQz2o4YH8NL4MOutg=;
        fh=nkfwB/Al1Ozv3kEye28FVRxpjCY6BMW7r3R9RI6Hlt0=;
        b=q3oxqdSKnXiuP0cAhdkxSnpual8l0+R0cqsRRlypFSTugtTm6SY8BAh7D1oDUN4Xaq
         ysdGvLeit8vrcuanDKA3VaYzTG+d3cH9nswte1WfMNJ2RSonjZPdIPyLpd5Os8qyISsb
         jCqvrQRH3HUdnwKBEXwwIW3x42BruVE364pKRcigizy18nVzckdtKbYUnYriXjjZFO7g
         Xhq4ytNnGX5f+nynINPCSF6RyLax/4Q9SciPJ3pQtOVJpZQ+WMccN2BH9Td5WDJtBJji
         usVzkAwhTp2JTOMebQodp9nQhoWh8IqXTEDvYEwEjnFoHUZq51KMMvvYyosPB8FWMv6B
         MOIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="m5Y5G/TX";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tOa6KQii;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1715028741; x=1715633541; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l4Xf+LXn5zwgguK9OhFADpzGujeQz2o4YH8NL4MOutg=;
        b=QB34KLi8SbkATtIpUDPQtAyJk4wmtZ8PvyZ/4DwVJ15iYR7n78pL/ZjWYCnV5W8a+u
         ks2p54U9w4OkdHrXj3Ai3Jhf2OrC7Du/kxepZbYSplzTcV9zffoxqubtiEkWtCJUAcNw
         67uX5W9PBSAUIaBSLIwaowsddzghOXGXOOXXN7PRsq2RhEoF2PFhOn+VTRurLukC+gHG
         /zLdO1VfLa2m8AxlwRUqzarbHwBLiIJRgnhnOHPNYIoylAyZHs5eLM+Fr1lflHGTrOLa
         1YvhdKzSajCB486oyP6FhvHEB7k+oeJZTe5f2UAr78sVrsgMikNxQ+zOba5+3yFTVo6S
         lkdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715028741; x=1715633541;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l4Xf+LXn5zwgguK9OhFADpzGujeQz2o4YH8NL4MOutg=;
        b=UsOT1agQ0Wx8ts++6sKvA1veGgwxlj/y17/408ZkofwXhywEixnZvY7ccytEaci2IA
         W/vlF+BduxyWI8HPmh6ZyG9E0g6Iwdx/GSDFbjJ81xUF/hPMIoI7jhsyHRAWjR6C5yTG
         7ZOUlpBRwE3xOP2o9ZfFxMrhHx0yyoFQ7WbLHxM+9VyUBA3rZyTDlaVv7zKmuwiecbhm
         dGmU0AIU2H9kRCAYVtHp78cF8wJe6c38aEXnvIIr5NC3gX6LcnzMuVblrpVcqjho2YSG
         Wb1VWWSbHj0vCpv+Gu8tEfZi9Xplg69SAoL1CilTXtmbxF60YMYKwrTvw5ZeQqEbToh7
         cEsA==
X-Forwarded-Encrypted: i=3; AJvYcCUMj+YXJYsR2hh4H2r7bWjV57RCB0nrBnICVD+l0PcE1nZXUMKUkNmmRf2CkDAJP50sOy3qXhXH0Lq0jxcFwywCq78RUuceIcg=
X-Gm-Message-State: AOJu0YwwuSRQTEOkVdYGtJNDO2Qkpy8dRIvYAuQYjA/+CSkUcLAopMb0
	OHBIsncy3iFEfHWEC5ubEy63DZdZFUAFbHKfBodKq+8TUJeZJe6Q
X-Google-Smtp-Source: AGHT+IFlsf0Md8/C2XKIoUkJVD17hdyPoFcrtyQgUuOgl60lBk7IzOETj3L5DPixtYU873gqzWhQeA==
X-Received: by 2002:a05:6e02:1aae:b0:36b:2a07:6767 with SMTP id l14-20020a056e021aae00b0036b2a076767mr17088486ilv.12.1715028741021;
        Mon, 06 May 2024 13:52:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:3f85:b0:36c:54c9:1681 with SMTP id
 e9e14a558f8ab-36c6fa546adls4956715ab.1.-pod-prod-08-us; Mon, 06 May 2024
 13:52:18 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWN9mxDfwHuNP4M5RngOs02uEFO9GaCWe0H2F2Q/IDm5oxnW388QTIQOd6l2GmoGNphNhavjlLLxw0OYb4sh59E/TrHxoSjd/8GHjU=
X-Received: by 2002:a5e:8c18:0:b0:7e1:7c82:ba08 with SMTP id n24-20020a5e8c18000000b007e17c82ba08mr1552767ioj.17.1715028737863;
        Mon, 06 May 2024 13:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715028737; cv=pass;
        d=google.com; s=arc-20160816;
        b=G35MMvXX9Jm7M2zlqFcwDZMmHQOhFopiJaCoXF6nOPCHcZviNABkfWkWpdcnvmcGlR
         duI6Q4e/JuJHzqx/a0CSnbyMj0b6AY+j/amOYQTXM7YAHjtKqegBrc1gkjAq8YoGi1Ca
         jiRyz1LJn6nI+TTyoTm6qajALRk+Nz60Adql6DhM71R33AygbuTaRFqHAJNwj7VNowvY
         YUXoc4VyNqMAfVXiPjBYF3wcYSdleSZ54v5xLVt6ArakT5sq1koN6fZCMHsGkLophWR7
         oJ0k3ggbopb20redm0oCV9NL8Rw8XOGEj6SyDrFQd4FlZVVK8Whq0GQZbc4JxhM7YeCn
         upug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=IgkKeLf86a+AfmQ4kD2MXpw+4XCY1FGMq4qH2tnlc8M=;
        fh=s9Pc5PDbzzhn/74bQOxXGQLnRCAcooH5RoNkLjenpZU=;
        b=lIfJX+jcqsznHiLrS617y2zuHmYG1f9MpgnGGt6o4cOchP8H+vpbTpMz+UxeUwk4W7
         gJqa9KoGabnFt62FKJpoHGlxX8jpMFA4pxLjtgxTgkcgAV9Z7wQknU8/L0mwxFQpOheL
         vAfqyziWIyG626jvrQast4hc4mXTs8AQhDgMuSTTMFgiz+BK7XiTlfKkzxrY5R7yme4t
         O5/N+xeqoK4MfGc3eWoUan7Jc2JebS09T9qqN+LjpzjQ6xP2m6CuT5jRrzSQsf+8sk+A
         oZhYcT94jlhsA46LuYs5F4jj7VxA2RRpGcarec1+94EhQEtYkhMzO5KKKXAGnCA5F/jS
         JtsA==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="m5Y5G/TX";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tOa6KQii;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id n19-20020a056638265300b00488cacab0absi64849jat.2.2024.05.06.13.52.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2024 13:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 446IMvme031886;
	Mon, 6 May 2024 20:52:17 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xwbt53jej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 06 May 2024 20:52:17 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 446K0BU3029247;
	Mon, 6 May 2024 20:52:16 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3xwbfccmw0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 06 May 2024 20:52:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vja7DmS99QT57fTH9u0mqKnALFSka80F3U6ZjuMKPUKhMt0tbPjP48b4aA8sq878vsR4FMPasYcoWt3/HfqVpnm6erJmk/7LEwPjInGZpv1cpjjwZCOryTjC9ZCMJXnd6bx2woUiESKYoCtiXr1+2+u8Oi+7N0HuVjKz265nBHljio7NCvCjDdJwlyC47lMMTltpSgqmziAeAO2B9tafSOC2k+xAuyg9ylKIRrVpNeN+2CqrvE3RGS5rgeS+XSDMN8J1GV0SH9B0Z7uJw+NediU5Wt2mwhUr0ooP7HbILMs1nFcU+SzNiWPPTafbt5m5e70w1dSffUsW0nkwSURKSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IgkKeLf86a+AfmQ4kD2MXpw+4XCY1FGMq4qH2tnlc8M=;
 b=j5aMlni5vXSgOtRJyRS1WLY7jnlP8ZIkN7nHsWJVzf57fUT2d1eEICtfpHKx+0Leu1sgkbRlBLW/N4jC5Yw6YPIHDx8tBO/Edj2/fPtUTof6UKkt3Y2u6Pehf7QS9AgzweXbWtw8/+JAk9vhfK/f4ffxEjKjVM8yGa2IodfsdNLo6Kpq+XuzpoTb9a2DzLKJzF8YVGVwwkG7GdzA+UzqDA7TU28LHMnjMQplVndFRDsLTRokHOKfeGtTEmt0bUPfXrcpDGgqE5hU8ei1PSdq9bpHsWEs064dvdGEOt0A9eCbwjzxMTMr3K4gUIFeTzFg03aboC771wr6mBR/VzRSNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by DS0PR10MB7128.namprd10.prod.outlook.com (2603:10b6:8:dd::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.41; Mon, 6 May 2024 20:52:14 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%7]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 20:52:14 +0000
Message-ID: <e1b142bc-50e4-4117-945a-7d74dad763d8@oracle.com>
Date: Mon, 6 May 2024 15:52:12 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi:iscsi: Remove unused list 'connlist_err'
To: linux@treblig.org, James.Bottomley@HansenPartnership.com
Cc: linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org
References: <20240503232309.152320-1-linux@treblig.org>
Content-Language: en-US
From: "'Mike Christie' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20240503232309.152320-1-linux@treblig.org>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:610:59::33) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|DS0PR10MB7128:EE_
X-MS-Office365-Filtering-Correlation-Id: cde35632-a8fa-404a-c7b7-08dc6e0e684e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c1VKSDd3bGpLU3FPY0N2OVB5aDBLcFJYQThtcXBqN3RpQld5SlluVXg5YUk5?=
 =?utf-8?B?UnhUTmdMekoveStNK05DcUYxNDFlRjJPdnFONTBUWFJDeURaRjA3U2JVL1FI?=
 =?utf-8?B?bDM1aTJVNWZtUCtFR0NYazRFWkdlRDJwR1lVcy8vcTIrTzRmdmk4elo1QTJV?=
 =?utf-8?B?SDRVckFrUER3R3hKN1lNQ0dzM0RLUEtueDhuY21ncFZWSHlhRnJSVUVGZVd5?=
 =?utf-8?B?Y29GS0JCWGJ4QXEvWFYvdWRGdUk0WGE3UkM3SVZBWDRnemxablQrVSt2Nmk5?=
 =?utf-8?B?azkzMTNubDhXNys5bjIwbXE3a2xpa3E2czFuK3IydlFBVnFFRjRPYld5Slgw?=
 =?utf-8?B?OHhxY3U2ZTJPNVVucktIYTM5bEJtaFhaZk5CelM0YlV6RElFUUgrZHg0SWdM?=
 =?utf-8?B?bmhhZ1Rhemt5aGFGSzcrVm5XMUt3WitpK3pMT0NIZi9oVFZTM1VMT3pUVjBH?=
 =?utf-8?B?TVNmc1NaTU04cFp2RE9DNzlGU1picXlGU1RGbEM3ai9BcHNtZyt6N21nV3lG?=
 =?utf-8?B?NXdUOFBtMmJCaXkxandJcStsQm1BU2tiQXNPMk9QQk55R1ZkN1JJbjNGQk45?=
 =?utf-8?B?WmlLRDdxa0drbVFJc0hEZTE2WUk4ZlVCdExzUDZMdXd3dWFKUytSdlJJNDdl?=
 =?utf-8?B?ZFZNTER1bjlveW42T3dhQkIzblZqeTRCTkhxazJXcjBTL0RJZjcwQXV3Q1o4?=
 =?utf-8?B?djRsK3BTaDdQLytqY2pOL1hrUE0zUm5DWVNKQjhRZU9nckoyZFZtK1llZ0c3?=
 =?utf-8?B?QW1iYklyRHYzVUQwNytYSkpNYWNrMUhJTU9zUDhjU09kN2pYZkgvTXVsQTM1?=
 =?utf-8?B?MTN3MXBQVzhadHFQbmhYR0VYSXBwRWdNOE1jaXB3NEE4SnJ2akg3YTlLWkZS?=
 =?utf-8?B?cERDeFhWTnB2UWtXRkxBSTMvdEw4dWNqYXdRUHEvOExtWnZjbFhJaklHUzMx?=
 =?utf-8?B?T1NGS3ZaQ0xwSGhhWWk0dkZadkE2SEpPY1ltWE9sWjg2bGZsMFFmZFdGUnBj?=
 =?utf-8?B?Q013RG5PSXFTWWZsWjF6aXRiZDVYWVRHWDlBT1VSYTJ0ajQvaHpZWFkxTG5F?=
 =?utf-8?B?MkJjTG8vYXpLeXhyaS81SU5yUExsdlJOYW96ckFubGpKNWdKOEczYjBNRTJC?=
 =?utf-8?B?ZElGQVBUMTZFRmJjd3hRMVppWlQ3Nit5OFp5NGR4VmM1MVNUVXJQaHh0MllI?=
 =?utf-8?B?dUdjazhlVkd5Ym5TclhVZytxZUF4MWFVa1lxUHRUbWZzd0hsLzFmR0hpNW1U?=
 =?utf-8?B?U2JlUmJQbmlEK1pqeWtkQm1IaU1LbXQxanJQU0FqMDFkTzMyMkpDNlFpSzRo?=
 =?utf-8?B?MUdTeVBFWndBRDlPZDZ4bGRERVpTU1RhQ1VTQUpiMlZEdG0zd3NwZHJEYmpD?=
 =?utf-8?B?dmZYbEtEWnp2anlqOWFWQmtCSTMxZDhsZ1lmT0dUZytvS2VyR1M1NGJGMk1j?=
 =?utf-8?B?WENKUW9WUzZhWSs2cUgvRVRVWjZ3MFFzUDlqelZ2TE5OWDNqWlJ0aWJBdTFs?=
 =?utf-8?B?clBZVzQvRXVNazBJSXM5Sk10L2xGUXVHQU5lSHJreEkvZHk1Y3RKcldvcE9H?=
 =?utf-8?B?dklxSGZzdUJTcXJyNmRZYkxGaGlLdENJNjFxdWdnVjRsUXhwTTU4Q3JxRHNU?=
 =?utf-8?B?VXdRYXpXOEk4SHIxVThIRzJxcTRLbFp5d3k4aVR6YlRRbEQ5MFo0R0FHVCtj?=
 =?utf-8?B?MWIxbjdDM1c5bllvc2hwOXU0RjRvZTZQdk92ZjkzVTE5M20vYVA1S09nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0ZRS0k2QmlrYXl3Q1FIQnduamVmc2hDNG5mY01wdk5RTXNhcGpiWDY0d3Bs?=
 =?utf-8?B?b2xxdHVpR216aXNzTnhJNU03MWY1STlZL05pbmg2V3Y1R0tnQk1wOTNpTkZ1?=
 =?utf-8?B?VldHYXR5YzkxQmgvVGkxQmhZbDkxbTZIK2pjb3BXSFVOeWxCZGtBVEgzbTJS?=
 =?utf-8?B?Uk04RFhFUjBnMEZocjdkeEVJM3NmN0xYaXRTREIxZ1ptdEx4S25kbGVUbmoz?=
 =?utf-8?B?NkErcXJrM01FdmRTVU0rdlpnL2g2R25CL2ZNd3BybXBDMEVCcHZVNnJLejBJ?=
 =?utf-8?B?TmdoVUs5YTNNL1phaXhVQktKRFJPaWp1NWN2eDdQZ3FmUUMxbnBvZHpyL1hi?=
 =?utf-8?B?bXl3WFdCcG54RjhTT3Ivc0loYnpPTGUzSHh3NHlWMXV6ZXhIU2Jpb2JpY3Uw?=
 =?utf-8?B?VERzNVZ6RTFJRXFCOXgrTEpReHc4VnY2YUl5K3JNOENRTGI4VUFPYTF4Zisv?=
 =?utf-8?B?ZHZscmF6anZiQlI1YStiUUx3aW9BQnRSS3pkOWVRZXppMW56K3Fody9wbDYv?=
 =?utf-8?B?MFN0ekZCV3RIYms0bXlybE9WYXVWVGJrQVQwMlVuQVVZTE9MMUJBMW1lTW42?=
 =?utf-8?B?dkpvMm5Dc0ZvV3pxQkF3RlpyQ0NvdzdTalJseGlFYzFsclluV0dsK05pdnRN?=
 =?utf-8?B?RkYvVGgyK0VqNkN2dGNOY2wvbXgvdnB4NUR4aUVBUm9YL3B2UTV1OEppSzZN?=
 =?utf-8?B?ZU5JdzM3QlQ3QXdnaXhYeVZLZnRnYTFVeE1oWTNMeElGM2RyNElqNzQ2MGJq?=
 =?utf-8?B?ZmJxNCt1V2VMUW5jWDJJK0xCYlN1NzhES3lxc0U5d29sOGdkRitJZjlBVDBy?=
 =?utf-8?B?Qm9iSXhZamtYOU9zcHQ3bjBkekNzRHF1S2E1OTNCYmJCYkVaRmF3S2NKSVpI?=
 =?utf-8?B?dnpyWFc4OTF3dDZKMmkxdENkenl3RHlleTIwUXJaZGNxWk8vU3Y5cmVoMHl4?=
 =?utf-8?B?SXdqbkhLS2ZrNzlZMkpieE5wWVhKRUFvcU9ZZi8zekV0cGg0QWwxNDhncVRI?=
 =?utf-8?B?c0I2MW9RS1BteHJudXZTSXlPOWpFalp4VmVoazVLbTJ3ak5yZ1FkNGptamtV?=
 =?utf-8?B?U2lkWmRWbTZGak1MVE1kZmluS0NuVmxOTUVkT2szY0kva3N3QlRNYy9pWUtt?=
 =?utf-8?B?RVlKSlh0TlpZaTJFbnFTSjRodFZSVElpZk9VYlRjL1lKZGhMV2o1RTRhc3JH?=
 =?utf-8?B?VDdCMVMvTnJwQVAycXJWWSs0Q1I0ZFBTenZwZzczTFZmSUV0dy85aWpTMTBD?=
 =?utf-8?B?S09hY3VBTTFHTzhQeS9XaGxzZ2lTK0JyR29GN1NBVUxyb2RubWY5SlRUanZt?=
 =?utf-8?B?bmNmY3JuRmMvYlJoRjdaRnpDQWJCM3R4YVFqcmRoMC9ZOUgxaDFSRlV1MGp4?=
 =?utf-8?B?ZVdSSk1UZmJWN042WWV0a1RleXpmU0J1Ymd2QXRWaDE2bU9BM2J6bnZ4MkdF?=
 =?utf-8?B?WWFNR0JpaDZ2YlVrNERhNWc2UnpuN0JaSEdXeUMrRTBNa1djcHUvLzV0QThm?=
 =?utf-8?B?SXVDMmVya29wd0RmMnZ1MUhGN3VQaEFmOTJsSnZ4WExiM2s4K284MGpNbFdv?=
 =?utf-8?B?SjdBOGRhSVZ2MlpKTDl6STFFOWNnNDh0UEdWWDdXcHgrMjlTbGFtSlZ6U1hw?=
 =?utf-8?B?WmtMWjZxOEJlV09NajBpQy9LKzBjdGdPYVRxQ3JlY00yV3V3Y3R6amxDWmZn?=
 =?utf-8?B?UUkzRCtqcjVzTFJKNVo0djBWMnVac3NHQThlbGF3K0o1bGtubzRDWE4xbUlj?=
 =?utf-8?B?K2l0VmdiaEZnemR5Nmd1eHg1aHd5V1RtUldQYm4xUDJQYXQ4Q1NPK2J6OWdP?=
 =?utf-8?B?S2MrZTE3MitJd01NbzdyTWlmeGdKcjdlakt4eHZkN2lPUEU2N3gxVWxJQW1Z?=
 =?utf-8?B?SkV6bkcySDlWaThZTk5tbHVjTCtsU1NkdXRzN3hNS0Via09TOWVYb2pmcHFY?=
 =?utf-8?B?a2JpQWhQZWtHdm1ocVA3dG5vdmxjRE5PYlFGcVgrTUdaSXhVeVhER2kwODlz?=
 =?utf-8?B?TTN6QXJ0TjZwbHVRL1BuZnozeDVzSU4zc3BlZmxQeDFYVFZMSWNCbXBkaFgw?=
 =?utf-8?B?K0VwQTcwNGlvajZKMzA0YTRoRUZDV1R1S1BMTnNncUx2NFJJbHlXZVkrVDkw?=
 =?utf-8?B?U0RVNVg2Nk5nMmRWdEhmL2Y5NExmYjhEcTJFRVdHaUFnWVF2cVpJclAyaVZH?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: TWjIKUWyoX5km9E5QWKa5ENJyoeMtg4a3RQCHQI7ORzni6J6T2Z49AnoOf0ZMHVLEpTBZFbP88Z8dreRlCm08Dp/pmEX3UPZrQ1IQvr5tQHFutnAemWV1v/CVL9F9PmwrcbyWPbuOIPhQ2Ngf8FBlf4D32iAFExlxOPodmzR0mgCUWg0O0SgpfaRCiSXgRILMeDMEO1TYgwIfD2mO/JVZLoOZk9mLdASxJzHyjNVHKudqmpJSGQvjXCtX/qkjrQWl52/UR5j/6/p3aSUDePzk+6bjN8F8Mh7d/ra7Rz4kbbx81kN4cVfmFFZPNEX02ZNngDyDjYTW+MFC/FeqjrSJ1GEs8OAi3HKzh6gXrWp0kV97YvBXD7Dr/z7T2n1Fe/zTARG6KsDPqwkhcyR+CVrEPDN8b12xQ1nIuZnVrqv4vNFPK67gUCfyVQcv/GTwQEjJm/X8DxyNWIlVawoS8Si6Ua6xCELxjfk10GfFZ4+4u0HJNPjj+Xj/wwsvXiP7pRs3LEapx0RN95DXLz7Lwi0oK7h489bg0A3lqFk7EWSoMulvrf8XMgSofi/vZtzKj77Ya1tZZGRcdC/OEbM413MNj4PzwUzJSYQa7bGODi6FE8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cde35632-a8fa-404a-c7b7-08dc6e0e684e
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 20:52:13.9967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tNVdNNDPm1XNACqhQFOGMs1wkuh7fvwiLCaDYTnMzqtgmzSs7msbvx1CEIxOTnpm1GzVUwLYI+WXFHS9dKf80Owu6EUg/i6NdhWqPMcw+GM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7128
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-06_15,2024-05-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2405060151
X-Proofpoint-GUID: KLAy3FmqToG25Q-CddewcH3x_cHZahxy
X-Proofpoint-ORIG-GUID: KLAy3FmqToG25Q-CddewcH3x_cHZahxy
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="m5Y5G/TX";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=tOa6KQii;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=oracle.com
X-Original-From: Mike Christie <michael.christie@oracle.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 5/3/24 6:23 PM, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> I think the last use of this list was removed by
>   commit 23d6fefbb3f6 ("scsi: iscsi: Fix in-kernel conn failure
> handling").
> 
> Build tested only.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index af3ac6346796b..123b861d2a9fb 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -1603,7 +1603,6 @@ static DEFINE_MUTEX(rx_queue_mutex);
>  static LIST_HEAD(sesslist);
>  static DEFINE_SPINLOCK(sesslock);
>  static LIST_HEAD(connlist);
> -static LIST_HEAD(connlist_err);
>  static DEFINE_SPINLOCK(connlock);
>  
>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e1b142bc-50e4-4117-945a-7d74dad763d8%40oracle.com.
