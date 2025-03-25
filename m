Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBAN2RC7QMGQE6TCTS5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B5A6E878
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Mar 2025 04:03:33 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id d75a77b69052e-47689968650sf46939671cf.2
        for <lists+open-iscsi@lfdr.de>; Mon, 24 Mar 2025 20:03:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1742871813; cv=pass;
        d=google.com; s=arc-20240605;
        b=CpgvxPoJJRkgB0u1SdMJcAAMD1cFJMyrDfQGgmluAIrpmfTbwlCE7hmGR9bjDogkUt
         zX8Ct06phzaJhu7oNpB5X8Fvh+qFQdD9S1ImN7nD8Zuw1sGjvFJw65egnU2Kke873q9F
         6rtbDr8iXQNPtBfdoJwXyHeF24U1NJen1iyQN5/L9wnvVV2bTYrzIy85x/IZt/7JvlHX
         JLhP9Ts7E2h76Jb4LqIEGkQk2zjf2zqpyvQ6zX2KDrgNj9DJoHQM4sSu8k5GevC0YhVq
         ZOLl8/peHITSAV5frmCowPDD4D0TblNOf11NjvGpZnfcUI6+My3aeBO4EgIH/IMWQFMx
         Ejjw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :content-language:references:to:subject:user-agent:date:message-id
         :dkim-signature;
        bh=H+uSwUIkCiULR33J7sZIgRRNMppciJIjmuVMBkBtKU0=;
        fh=aR84cyjfPDsXJ/z+6X/d5jNyk1AwuK3LBcvXXrkDeTw=;
        b=fUjY5j0WCMfmHmoca9uk7IMC59Sas7rUEgf+BHug0LWr7gYO217Z+o8xRPm29Tt/Gy
         NnXwf8EIZ5tcr+XOruURqexEN27XHnQe/2BFiL4JHTGvRaI5FAB0OxktQUARTYDPPEgO
         znks4DoeWvep0/SMTdyZOMiCTT+xbUjGLhaOD69XENcFhmMXYA4bOLEqAR1oSdYnI3Cy
         sl6RkAZtnF+sTiw9u5OqDyMaJxoTc6JfoZThLknoBk588clR4gEu21N5qDIkoPC6eHXU
         4NwF4QJIvG1advuCZY55iOTaisumJlxdZvOZeNlNxhf16tFsdIMTdjKQjRxAS/DBZCef
         izOw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=UawYpWz7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=r+Aklprt;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1742871813; x=1743476613; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:content-language
         :references:to:subject:user-agent:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H+uSwUIkCiULR33J7sZIgRRNMppciJIjmuVMBkBtKU0=;
        b=LCIKX601h6JRnfZq1y7f7WykqEK/eXHbsYla0KITAgot/vRYcKEG0BsIQ8QpiIl/fv
         IWREe+Up95pJdcpwA3am6jj0427J34hSzeVRY7o1CR5FCmAFp27JYlMKBv3T+D79WcRJ
         aZueBmn2K4LL1CvX3tVH/eGpOSUnjDLQ24jUeb7Apsut69Q0A/WbQ+b49DzG+eFpyon2
         cmj8UW6wCOo9JaV4t3xxV5yid+kx8VoCzY9x9iV/9TSbQcMGYI98iWArLByYBc1jpSt6
         4hzSOeLMetjFjv8hNBVrsCGWEg1LIPKQYp8w7H5fA4Fq8nrTJTQAuf5yZioUbWD8O63M
         tO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742871813; x=1743476613;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:to:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H+uSwUIkCiULR33J7sZIgRRNMppciJIjmuVMBkBtKU0=;
        b=FKIc4rJ59DNzA7pmo7Ua6HL2tqoy2gApnFWN9uq7iH+OwT4MBFISHDW8j0/XtxZgKa
         UNNk1dhsC9FyVUBi3W6LhOhSDmXBAWJDY8h9tKNIVODiGXki2Jyk/oIkKA33z7/UgRUt
         B07d/KFdoLNNYnNkt+ANO0OusslY/M94HRH6328B6g6swom602gxZESusKC3naDgZMRp
         De6vjykGIb1ICoKTbG3Y0I0YuR9rdzArffz2bJjYP7PguCohzhHEqFQhBODDuMkfHknj
         vIXnYdVVQGJLGPQ49zmUtrFIPVGt+DrdkCBhojgJ5JUqGwUlaSCO0ancMqFnHTJq0XZa
         zQHA==
X-Forwarded-Encrypted: i=3; AJvYcCX6ePynkixDvDLyvQbnqMq1wp8wR+kxNWEVp4M6R1/gC++FJUTLCTyxIDWNP1EHo8123mIORw==@lfdr.de
X-Gm-Message-State: AOJu0YyzJm19WY+K76WmzOo5vx6RSP8lpCSrSbjtjr6q8qEVErD8y3RT
	tAWGDH2BMXnJm/SnMD0ZXkD+yyXo56cF3YxUDACd4HbmH5Z+5ujA
X-Google-Smtp-Source: AGHT+IER3QQz7UIo4peCQ/SpGV6XS6oPOGEs4KBj9oO+Q37NaaAvJ5n9H/zdhAb0lUICOTBeAxFgGg==
X-Received: by 2002:a05:622a:4009:b0:476:8cad:72d9 with SMTP id d75a77b69052e-4771de3f530mr255873371cf.33.1742871812501;
        Mon, 24 Mar 2025 20:03:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=ARLLPAL6Flsoev6AQUGRuv5pSci7P4ZVgc4TMOUBOf9DGDKHEQ==
Received: by 2002:a05:622a:8030:b0:476:7e25:5f46 with SMTP id
 d75a77b69052e-4771c3ee5a5ls10079811cf.1.-pod-prod-08-us; Mon, 24 Mar 2025
 20:03:29 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXz/axcGPg9b9XdYkpMJCI4G2XgJl8gWM6sSz9lYoNNadnivo+sKwt+QJl1YZzY1hSyq8YXzpzaOuVk@googlegroups.com
X-Received: by 2002:a05:620a:6a0c:b0:7c5:4a8e:b71 with SMTP id af79cd13be357-7c5c81071demr1043500885a.47.1742871808931;
        Mon, 24 Mar 2025 20:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742871808; cv=pass;
        d=google.com; s=arc-20240605;
        b=USwdB01CrsLzRFQMvf+zuhDnH5NqPGZkI6YCp6Y2HL5VCRclP9TqZLQ1ut4dIc06li
         OrUIKtrzq0oxIQV/fAEBuJgycB8wUZDfbKYitT2Fn7MxOeoIrXPqGWP/aJg1b05I7HMz
         hn3K0wtcKJcggxQUciKLTCijW3xUGdHHDqhx+darEaPp9MangYc/jQeLhIRYrHIwSTr8
         oGjfBMf77WJ3dYaio2ecc5oLwE6DdpmEaUwLMf6dSj1OxeAW32qmxBqvKlptMUuVheNZ
         lvjZh1OJNTv6DTzvX4fd5wwAjnMfkmijm12iSo8/Jbj1+OISs6OffjlEAHhgWd0Okctd
         Hyag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:to:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=mg6tt4xjPuYc2sYSXZa2Y8pRnMYroW/Bpd0mylDztms=;
        fh=ccAd10iaZX1+aCvdOt5xAE3ujRnazxjNwkfW0mfV1AA=;
        b=Pk0WRXHhu52iLNYn8lNTrVVO7faQWoJdlCTX8RRf4/Eqyqy6oSM/5CsmrDTpI+u9s0
         XrdPyxJDchqTy8i/p6z8sNM91OWZhohTDgBBufi4SCgoo6sQj7trUVRsUBiiqxtn62P5
         woZzmGA7+5z+i9Vw66DQUAVNbirUPppfwvlg9az/n3jlJPREBHZJjvqtRaZhsnyhR6QQ
         Uw4Bg21iC8BPPtx6/4U4goL8IMRAf6ftPhVoncsoTl2rt0qnAl9ZDu5VC0hfhUpm9MYS
         TPLnsafbA7d9XZ+TEuNCtBm/TTXsmZBEm/k90GblXihxQWNqq8QXJwzMnROUgEitlBwI
         RnkQ==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=UawYpWz7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=r+Aklprt;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id af79cd13be357-7c5b9391384si42989185a.5.2025.03.24.20.03.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Mar 2025 20:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52P2twIf002168;
	Tue, 25 Mar 2025 03:03:28 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45hnd66076-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 25 Mar 2025 03:03:27 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 52P2bqMo015130;
	Tue, 25 Mar 2025 03:03:27 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 45jj917ept-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 25 Mar 2025 03:03:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zj2GpXTyWZusursuhsYoVMQsIsgfo3Yrbdh85ZmtFDx5cQHvOKLCpdXQaPT1nAcE9Mi0a+/rijDYYXN+UP4AlyoANe3ffOsmPBe2kUGpgHrMOcE6Ds4kW8WX5awDxcIFnUVnVXq/tBk8LeZrapQR7tPsEqPNO58e2NhT/Yn+VcnXncsWixl/wpbC0RAuN3n+Uz/d+whLz99p1DKc8CMFyuLzZSw08Mv8Id2oRRqEXJgesHclfPddhOCUmXepcTcPDs/PinECk0ZuFWnwp3gl76TMzpvbd8/iUB8V8ljfI+hdslE/KRCS+SyLvs8XUyhUscz1tCO/GTh7edFZ8rkA3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mg6tt4xjPuYc2sYSXZa2Y8pRnMYroW/Bpd0mylDztms=;
 b=m/JKMV0IN2c1D0tp6vsMKrBX0BawFJ6nPAafSSztAM8EnmfU57FJwZEfwQxQqgozuRtlQmpDPz6czRptL76OiL+ZtZmJ/LM3lfY/Px9jGUYRlGjWi8/foQydxsouGTBh3/vyeSc3RyVY9qMUKHFxnxCNzgQfkOFsc3ErfqbsRLfrGzIIEBjj2TZwD6T419nrgMeo1znPB+bjD3GEj1Qj8hh4PgFMPpmgCFWBRgyBMTmJgVQPBCu2GHmKWacUh1ycF13CB9emAPMJFHU7Df5+3lmBBr69NygeE5VqdwGMA1aN9wfb0cJK34tFeQdR9bbKSr9mtEQkku2i4khpTm9ugA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by LV3PR10MB8177.namprd10.prod.outlook.com (2603:10b6:408:289::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 03:03:25 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::b779:d0be:9e3a:34f0%4]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 03:03:25 +0000
Message-ID: <9dfb46b3-3dfe-40ea-9eae-c6a2533ad950@oracle.com>
Date: Mon, 24 Mar 2025 22:03:24 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: iscsi: Fix missing scsi_host_put in error path
To: linmq006@gmail.com, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Lin Ma
 <linma@zju.edu.cn>, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250318094344.91776-1-linmq006@gmail.com>
Content-Language: en-US
From: "'Mike Christie' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20250318094344.91776-1-linmq006@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0314.namprd03.prod.outlook.com
 (2603:10b6:8:2b::26) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|LV3PR10MB8177:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dfd085d-d9c2-469a-0003-08dd6b499c1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enZ4YUxuU3k2K1ROajkrNFlzQnRDakNWek9kKzRlRTZpMCtoWTZRcFFxQjhD?=
 =?utf-8?B?eVlkTVVFQ0Q2enRjSGNSanRKMHBDQms3NDdDbzNxL0NvZFRTYUo5dUdlTFQ2?=
 =?utf-8?B?S2tYbUFXK2hiTitYbkNJUzZ6bzdzOFltaXBlUytMQXBrWnFTUEVkWjcvWitw?=
 =?utf-8?B?REZQQnVqOXN1cUFQdGNVMlAxTGxWbkcvUGhhRnQwS0NidW9XOXJZT0I5cjhK?=
 =?utf-8?B?RDhiY1ZPekY3M0RHRUcwTEZkMDYrdlhEUzdmelhmemorNFh5YTdhRjVyK3NU?=
 =?utf-8?B?ZUVrV0FDaFN3M2Mrb0lNaHFVUG9wRm00OW9FN3JENTNjeGpHRUVybDlCNmdj?=
 =?utf-8?B?QTBHeVZwUm1IVEU5TytiSVdpYjkvSFlVRThuU254TVVRbU84OGZTQlFCNjdL?=
 =?utf-8?B?bHNCdHJ3OGQ1U2hITUFYTlVUL3NvbkJYZW5XM21ZL3NpSjRYRHJ2b1pNTEZF?=
 =?utf-8?B?M3AvWElDaFFLV3hkMEo5NVkvWk9EV05uRkoza1cxV3BDWjU3ZG5icDN4MEZn?=
 =?utf-8?B?WkxWNTlZa0drTE5HVngvaXhmSHAxcENoWHZUMFdKNktXanRQUzBPWUxXbm5i?=
 =?utf-8?B?TVdkRU0wMng2bStGaEw1OGRNdlNFMmdBMGhTSGs3SnNiS01yYWVaeDY4Mys3?=
 =?utf-8?B?OUFGdURRekdUb0dXdStKZ3JyMWM4WUswZlF3RVFPQmY3bWpNcnBGSDV3RFlt?=
 =?utf-8?B?MG5Ba2ltbmxDb29RbUVZbnYrYUxGN0wxamJrZm1aUC9GSC9tUExWTG50cHdJ?=
 =?utf-8?B?SEdFVXkwQWFEZ2ZtakZjcXhialFXSGxVQTNSSGFMeTVCMzNHa1J0NnJlTjh4?=
 =?utf-8?B?aC8rNDRNaTNkZXpWUUwrUGZ6L0xrVnF4MnpocUw5VDR0YlE4Y1luYXhsbW5L?=
 =?utf-8?B?YmRFYlZMRXFjaVNHbW93MVdVa1A3cXFSS2hMNWVONHNLR2ltNXM2Ri9lelZz?=
 =?utf-8?B?YzhJek5abjMycWtqMzd6N1dWRzRhMUlINFZMTDZYcUhjVUpsb1BUc1NlelpT?=
 =?utf-8?B?RnlGQlo3QmlKSUFwL0tnczBMSnhvWnc5OVNHSDhwYXdTcSs2R05FeGdqOUg1?=
 =?utf-8?B?dFN1NVBTcWd4MWdrbmEyakxWK2E0YW52MUFKWjBpNFZpSVBEVzFLd0xqenVw?=
 =?utf-8?B?QldIWVEzaFI3UkR1TSs0TDBqV2RPZWVoNXRXczRXVHU2TGF0OHBqNWdrcVlE?=
 =?utf-8?B?VXpwQTJzbUl2bitaeWVwbTYyTnNmanNwNzJObjNodXBXbmRyUUVieGVqL3dG?=
 =?utf-8?B?WG92aG1Yay9Sb3lJOVUwQ0VPb2ZpQ2RvQTZlUGJaUDRIUWVvdjZMOVlNQm5u?=
 =?utf-8?B?a1JZeFNtNTk2SlVaS3BnNWZFUUp3dkc5ZExTVG5BNk5Damh5VDFrOWEzcWlP?=
 =?utf-8?B?WmZneE13WWxidXdxTEZwVHcrQ0pMNFpEdkFVbTN1YzU1TjcyTG9kckJ3cUE0?=
 =?utf-8?B?RjVsdXRnNE03aWZtdm5EWkIxZnZZRU9XdmU1QnprOXE1UVJhckJmNEJuamFl?=
 =?utf-8?B?ZGhkVlByV0VqUnV1UUtQOEFQSHhwbkkzQjNNMUFMbDhEMkNkREJhVzA3MDRG?=
 =?utf-8?B?OW8yRzRMWVJhMmY4Vk1vUFhNZEk4RzJzTDBxVHE5NkN4N2VCOU54K1lBZmFm?=
 =?utf-8?B?RmZINE1zdEFjeGVaaytkcUo5d1RZQlVLZmVMY2lINC96bWVHdUE1NlpGLzQr?=
 =?utf-8?B?NTdGT1lMZzl6NEVueDJ6WDJiVUZvcFM2UkN0V0VvTm1UR2s2YWxqVnVRWFlE?=
 =?utf-8?B?VnorQWZvc1grQ3p0NmRsWEZjZzBkZldzRDNHNUxWMlI4UGtKelo4UWRGMUp5?=
 =?utf-8?B?VGZ0QTdxdUk1UU5PblhxSGtub2hjWUlURnc1Y3F2SXJiQVRrRnEzRmxPS05l?=
 =?utf-8?Q?Sw5LooOsF+DGw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkVqOWpoa3dYcGNzY3Z4THpJMmhFNU4yTnRuWVJFVm1FMURVM05rbmZ1T1lT?=
 =?utf-8?B?VlA5bmd2RkZRNnpSTS9tb1k1MEZyTE90UU5JYlZ0SmUzM05nZkJsdXFJRmlN?=
 =?utf-8?B?ZXZQL1hJTW1BTFdFbk51dStDR1JnQVJqdTNuMlRYRnpzeE1kZHRxZTlxTVBP?=
 =?utf-8?B?MkZiOVdybG5sM2Y5a3FvL0pLb1d0aWhrZk9hM1poTWVrd3hJcENqZFdidng5?=
 =?utf-8?B?ZmltL0xBN3JKLzVOaGRyNEVxUHozeWd1UmQ4dFFsbFhZVERJWUxkZm9aaXpr?=
 =?utf-8?B?K2xQVHUxRldLbVhvei9SaGh2NWpZQ2xOS2tRcDVQY0xNLzlMRXpVZFFOMzFY?=
 =?utf-8?B?MnQrbmdWajNCRGJSL1pScWh4bSt3MVc3SEFmMDBielpxeklQejdldVdSa0t3?=
 =?utf-8?B?aHBWdmh5N0VzSzZpcGQ5VWliRTZZZW56akFGRUhTa0FjQ09SRlU3Y2xOTGdw?=
 =?utf-8?B?RzFWYjhvRmxKd1ZiWGxFaTlPMUJqWVRmcjVWRjI1dWczak1ZN3RTR1pvbjI3?=
 =?utf-8?B?QVhTb09MNVJwNFl5eTlRdmlEY2tqaFk0SjkwRHM4SExuLzZldmxPN3QwQmZt?=
 =?utf-8?B?alFXZDNTUzJrWldEUVRKQXdSSnk0MlljUkNnajBCeVpnQTU2MWhBV0hlWVl4?=
 =?utf-8?B?UEFVdUtNc2ZjaXpYa2hSMlAxZFQwQm0yT3BKdlp3YkRUY25zWEV4OEp1Wk8v?=
 =?utf-8?B?cTlqR2c5Y2tVbSthaXB1MS9VcUdDSlNWSHZHa0NoaFliOVJ6Nldlb0VGWnlX?=
 =?utf-8?B?ZkcwSEV3U3k4akVlYlZ5enJwL3dtQ3RnbS85SFh6WnFQT2E3RW1UamMvV2wv?=
 =?utf-8?B?RDJaYWJybnJUTlJkQjlXTnpwbWp4SmRrUXFPQlpSeXFaNXZLWTQ1L0cwd1pz?=
 =?utf-8?B?OHhub2c1SjF4a1d1RGxJb002S3JaNk1pOFpyZEZXdnhLSG9wTU1IYkpUOHZI?=
 =?utf-8?B?d3VyRTRIelN2ZStmZVFOR2JaeFA4Y1VHbTNhYUV2bWtZNEtKVko5blo2ZFJ6?=
 =?utf-8?B?b2QrYUdJTkI0NmpzUFE0citZdzVqQW1BL2RLOHY1UHdrNXlkRXdrd2swWnRh?=
 =?utf-8?B?RUJicUg3SFRNTlZ6OHBtZE90RWIwTlpIMW9objByZnpscGU2dDlFMWtrRk4w?=
 =?utf-8?B?WmNmR3lGUWpLMUNKS1ArYVZjUHZ2MTROQzBwdVF0SnNqdUtaWXhXenV6ODVv?=
 =?utf-8?B?V0JLSjBpbW1scFgwaTVHZG5ma21pa29hcjlHU1BTQU05L0ovemE0OXZXTzF0?=
 =?utf-8?B?NzlIa0VHcmtnc1JNTEk1TDNQSG5tUEQ2TTRtc2M3dUp3eTRuMVFFejNsRXJa?=
 =?utf-8?B?K0JLWFYwUHlmempjRDJkMWVBRnpwdlJnQmJncmlnTFcxSlR1TmRFdFR4NHZM?=
 =?utf-8?B?TXNqaEZmUlBTS0Q2WWVpbFhTQVFPVUR1K2l4TlMvNndrUTVrb2tCS0ViQ3k1?=
 =?utf-8?B?UG45NDZtcEpmU0dhZ252WGV5UWxYTEtSZWc0cWpxM2xyalJBQWh0WUpXTWxJ?=
 =?utf-8?B?WFJTK00vUzVFR2s3Z0ZLMGtuVVo3VmNXVEthckpja3hnK1ZON2NTSHd1VlAv?=
 =?utf-8?B?L25RTTdPRDQ3UkZtcmdvU0pVSmRPekRPeWtqS3JaUDJuQmE4ZWtZV2ZrSXd5?=
 =?utf-8?B?ZVlNbUJOaFBvWVVLK2FjMGhyUHBQRGhheGJpTGdidXFQR1BmMGR4Mmg5Rjlo?=
 =?utf-8?B?aDNuMVQxRzFGaHlkamV0NTVNb2VUOGJyQUJBMmRmNUs1aVZiK0owYjdITS9Q?=
 =?utf-8?B?azJzSzlQTlVnWHQzNUlUVC9pOEczcHZpV2ljVmlySm15Uk9MOHNja0NGb0NC?=
 =?utf-8?B?VTJkUVJOdXNZbHJJSkFvcEt2NjNkamd2bHFTcXdrWjFGOFVCVGtxRlZZekQ5?=
 =?utf-8?B?S3djY3I3QlBZd25FWHNLMnlhaEdHVjMyK1BpV29FNlVEdHVIeFgvem9NaHV5?=
 =?utf-8?B?NlI1YUVSMjhVOVlZbHNiZ3ZWUi9SY0FOd1FZYmd1cHBjczlmT0NKRmViQ2Jq?=
 =?utf-8?B?R2pBUzVsN1V6UjBGcEFHWExoTUxYV1N4Uk1hVitFcEJGYU45ZzQ3WW5CSDZQ?=
 =?utf-8?B?eHRoSVJxcDBaQmxLdTZsWXdVM0h2djlMMHE3RDNIL01Rc1B5aXVQZlZwbEdH?=
 =?utf-8?B?Z2Q1L2JTa2V3NjByU2xOWGhEcWRSbmJvdytZTTk3RjUvZ05RMTBmc29tRjhp?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 8veM4gI19o/3LmyJAadILFmdTtZp5jeERl2wt1cp7NMudySzHXvSNHa3KBIkUdCjsEA/f7JpAcJ/yLMpHD3dBE5QhVFDiIVjETk4caepO+edSK7+NE19JbJBfdEdQihIK0mRo1aFpRkl3bgS0NGPRQnWRUQ3LMwWWn19uLQ2N1QLGDhGpGrudeorhwBtCwkkecyZw4HeLQfD3wZvbiQyYULr6rYJwo2+T8ptYyjKGHgp91q8Acf1tIKsttnOwAYFFagL6wf+LaZUj1f5s/R94ZUilihmDRmwRVKkYoeoVHyUCWRPp8PCvmwgbDXMFbmlOEqMa+C2CVjDrfvIsJkTWpBvCDu9yzeSbnhfhl+NZGJxMRaGVh4GRPT04uDxw6YUwr+gYIlUlr0wqoXGwGpxlSy/4pvjwd2KnjtK6qfQie51tPvgMrhiCgEV8k/1BU/O29NfWEZoETxVnRHewAwbncTRhIgw4xODZqYLNUSuupdKHQWDrOIqfKZ0c7xMXIw2ONzJjbkBcecnCfO/3nQ0Qq0prXiymwehh6Z+JiFPzfeCAvMNg9aQCy9IooizlTehUih2MzbVrJMlqWIFXrE04uDuqJNWp4q6Ho8ROiPCcf4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dfd085d-d9c2-469a-0003-08dd6b499c1b
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 03:03:25.3403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pfsU/JWiJn8408Wphxsxc2iUWPG9emjuV3ogNPWWl1RMfXrA6i3Dwux3YFQRHdMNu5xAT6RIRpewYX/K6wj1vdWX90JigyHWeZA8I+RioFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8177
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_01,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503250020
X-Proofpoint-ORIG-GUID: ihCelEMjo0gIu-kDoacCZZIJdjxWPKQ3
X-Proofpoint-GUID: ihCelEMjo0gIu-kDoacCZZIJdjxWPKQ3
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=UawYpWz7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=r+Aklprt;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=oracle.com
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

On 3/18/25 4:43 AM, linmq006@gmail.com wrote:
> From: Miaoqian Lin <linmq006@gmail.com>
> 
> Add goto to ensure scsi_host_put is called in all error paths of
> iscsi_set_host_param function. This fixes a potential memory leak when
> strlen check fails.
> 
> Fixes: ce51c8170084 ("scsi: iscsi: Add strlen() check in iscsi_if_set{_host}_param()")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 9c347c64c315..0b8c91bf793f 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -3182,11 +3182,14 @@ iscsi_set_host_param(struct iscsi_transport *transport,
>  	}
>  
>  	/* see similar check in iscsi_if_set_param() */
> -	if (strlen(data) > ev->u.set_host_param.len)
> -		return -EINVAL;
> +	if (strlen(data) > ev->u.set_host_param.len) {
> +		err = -EINVAL;
> +		goto out;
> +	}
>  
>  	err = transport->set_host_param(shost, ev->u.set_host_param.param,
>  					data, ev->u.set_host_param.len);
> +out:
>  	scsi_host_put(shost);
>  	return err;
>  }

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/9dfb46b3-3dfe-40ea-9eae-c6a2533ad950%40oracle.com.
