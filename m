Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB76O46XQMGQEF4VWZZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B95880564
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Mar 2024 20:29:06 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id a1e0cc1a2514c-7db36e2e302sf1508580241.3
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Mar 2024 12:29:06 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1710876545; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSPILIolfEU5i/JDc8ztYFUjG3plZe8pJW9SpNFqD5UfXEDDTXQ9UzqayEivnUi5vB
         Jw4J2ZEs8Pi+RoMqufLaegXmGFa2khm7QhIXVp7u+JrBJ/5N8IzjAFRmsbivHuJ45KOt
         y2cU8BxUdiP8nT2sLmwycBS1h3v2Othwdt89Amvx86pLVgYlSzJjNkbPaKwVrpZ9S3+N
         4+TLlkCoveZSDwyjVBqVMWjof1Ra9Gbt//G6+1udcG2+SwtdS47s0LGbve3mK07OtGR9
         bMFqHKVGnnEhT/9OxgHp1399IV/Tk38vrLIGkUFXi4uOz2jfLyGNMH/z7DGP/PL/PrzU
         fRcg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=ZhSRn7BWIkZgC+tr0saq5WWnXSOlKNa5BkZyoxXIohQ=;
        fh=id8P0angTj3jQguGOJB92rU4hACuf2x4YHbRcdtYnWg=;
        b=YYreL++sqo9cu/v54/WIC+aT5/hWAjTD5tpCkg3nHw6c+S8DiVJg+stwe1Vr7JJIhr
         tD+TQvBDOG+TOnTDCyEB4oX80S7juzsQV03J2k66pe5PlUK0nwtVoZIPKvbHQ0fVU13a
         WK0sWHIS1w4mMMpzYMQ2pIWdEc+4ZZyQqjpclkMdm0O2rA4YrXiIQZLl/N8oTcyWQhDM
         itd+u6VW2FM6bGXn0WYUdxx7kv0YzpWsYIIBb1be3LMqKW6ql4RIZGfyd3kNTnX6MK9/
         gG3zdVBWu6OmaI/Y9quct2IXH+ek89lOdOqB7SP1TOHdZX1UvhnrDadyHzlt9Z4l/Iyk
         ko5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=mR0aFyk6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="K2bLN2/8";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1710876545; x=1711481345; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZhSRn7BWIkZgC+tr0saq5WWnXSOlKNa5BkZyoxXIohQ=;
        b=nAFBEGHWMF/unxW1ZBzRsGe7bHmkagCMgJ1DUh2/LnhZsaG905kmYsSZ7yhL7EJUf0
         EWlUP/T2GSuuFOuIsf8goIp/vJnHZtDFcGyCuupfea10RiI7d21AImZJqy1+FRB5Cb4E
         khhGxNDwJYpjaJjFqLIEKxiTPG6USyikA7bmRMWn4LCeutLw9FqwcW+XItmgayKPMgAb
         GHBd5WY6vYyn8QgpdXHp27xrz723S4kHsKfS6W/d/1y51IptVpNMpGaLn21HZKq88q39
         abJd7soLWwqj4PoLKNMWRX/Iou6KKqLhx+jqxZfBy3WbMAY+TfYYA3GQuet368f7Xzb/
         Tu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710876545; x=1711481345;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZhSRn7BWIkZgC+tr0saq5WWnXSOlKNa5BkZyoxXIohQ=;
        b=ULXp5YKHcUog3s3oQ019BUQ3z5K8j6HGg14cqOTSGgeW1WaQpAWx4v7ervmQe007GT
         JFtjnln5x4dfbBiZGwhVDiZUfUhib5Uc/mmmK6QEuOAT4Ui7zcRxCKNAox2JQ00qNepY
         OnQoxIFiuJKBmdkxtHhMZ+DnqUqKk3X+WQs/w+K1bRu8QwivcDdB8seNDypFd9aBbACt
         4hY/IwVMbs+qJxWLqqRjPoTZKJLREZvrTb37/HBAZUVlYNjaJVFMKL0AxDVLppS6wa+7
         B76+KbYUjh3xmBnAMxZ3fj6L7Ht88I1Thmwh3gXvqDYYlVU+aosL2odmH9s0Wrgvh0Bu
         fGpw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=3; AJvYcCXTVKfP5wymWAeC9rfy61hB1Xtj5dlyjI5BqHMSMsW8Jvv02I5Mn9mOHz/1quZaQKX0gv7qCE129pTGBR0lTpz0Hd9hTg3JLlc=
X-Gm-Message-State: AOJu0YxC1ZB7ECK8mKHnj6X+bZkpRptezfVNHVMDlNhF/bbtLRliPZof
	jVntyYztRuS1UqCmsvyIjVfxkB4twwDAq7COSGdgAj4f4YzcY5Rr
X-Google-Smtp-Source: AGHT+IGXEb8kO72Nh7Y7Oo4QrfFovp7LbCEC1zEDy4gcyq6iUBX1FuIdb3ozSyuRWLEgSs8SIavJwA==
X-Received: by 2002:a05:6102:3171:b0:476:9ece:da36 with SMTP id l17-20020a056102317100b004769eceda36mr2683313vsm.15.1710876544991;
        Tue, 19 Mar 2024 12:29:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:242d:b0:690:aaf4:3ed with SMTP id
 gy13-20020a056214242d00b00690aaf403edls913066qvb.2.-pod-prod-08-us; Tue, 19
 Mar 2024 12:29:02 -0700 (PDT)
X-Received: by 2002:a0c:ed42:0:b0:691:1499:c708 with SMTP id v2-20020a0ced42000000b006911499c708mr3304517qvq.53.1710876542705;
        Tue, 19 Mar 2024 12:29:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710876542; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6ARjW/TQFq6bW9VonUG7WxzhKxGx59ZM2fH82ApJFI97QCy6FJIqKbuNq9/W83tCg
         oA6fCV6hmt1WzXlAfkzU/07fMLVVSqqsVt9r+4FYQDggU6m/r2gV0gN6Ko/MDhh0etP5
         I4+115R/EiggSRzQCk656EG6osjvAMIM9aEedW4oPrOkbggx/CvkU3Y+u3Ppj1XS3K/8
         7hR/CuNNYmagBl+vJJO4f6Dq5E/2egS6Pe5OT3h8Wjg7LZccCEDY+Rq8hw5pZ+bFZjnv
         mL+D09yCfHYlGCC4A23MUs08SCPQn5m+aQrG7qr5S7fG/7m527RCnbQeqCPPLI6ATfeW
         4Hfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=DeaLeC8P+m7Q7ovOS6tDnYDODJ+tarwBrjbniZyM/KI=;
        fh=/5Xie3NaimY6e3T5dULVOoN1bcNI+9EzkrKAQLEtpiY=;
        b=l3Gil6UBxZmjvhLbGqexB0zfK0S2kzhQgAz4D7Uy6EmdbbsKgU5Me27bEeeqfyXtbf
         Xec5R1SgtR0VZPlE/iMitwERgwm6TBjctS4T3VXWjCHqmQ8CnS7fjlkVyTaXy62gCA3s
         famCqYTeW8zV4eEfHD2UsI7EuSDECvGa9pXKeYfVwh6lj4MTFLCYHIlbTRNPHMLyCPGh
         /pJfkbpqsjzj/NKboRkb2du4nhIYtvbM5xUWb55Qod82pXQHvCPkUEnvOHTEee5WC4Fl
         QPc4JQQgxDPPf5y/L4b18IjJLhnZW6cC7sFq20SMsOu1nE4MHHhRWv2xGeQNUhCn6cN3
         lQhw==;
        dara=google.com
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b=mR0aFyk6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="K2bLN2/8";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id j14-20020a0cc34e000000b0068f10446451si51284qvi.7.2024.03.19.12.29.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2024 12:29:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 42JJESeq024949;
	Tue, 19 Mar 2024 19:28:59 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ww2bbpf70-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Mar 2024 19:28:58 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 42JIWH53024144;
	Tue, 19 Mar 2024 19:28:57 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3ww1v710qv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 19 Mar 2024 19:28:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSLWFH+YjWrn7kcLN7Qn755Nf4a9VGlU8rHscNsGklXrryR2q+9LjrZ1PWexqdY2FTps/KhlhUYvt7F8K/UhZAKdDmkCmgihZd99bpers36qvYdcwMuA65AWwZvhmrlp9jdqFYzAJeEyG1po355QaGbhzuVO4tQQos85/yexMNRllkX1RdUa+IIxCYaUGlPSV7hcyY8mHRA+LPoO4RMfxXuSTJ1P6uJ4TpON3A1x5OAgnfQbLbZATi1bjwFE0Iut+Z9SR119dDFQ0abG+OBp3l3K90gM4AX/1Cd/auM9gJSd3nP60cXzSLiuqOdm7gCfUxde2dUCS/lw16ND5GkA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DeaLeC8P+m7Q7ovOS6tDnYDODJ+tarwBrjbniZyM/KI=;
 b=VUKvG3cox+MTO7w0hfde9atRM5+Lz5B0ulatPRECbXoNovZddLQ1isOa3O3JUHw2DgdQS7IPtbHYUZogWnRo+e8Dn/rzZYaS3157UZwrMH9yggaEVycME1phX8KQOa7BmsZS/Dy8QMuQcJSVUsiPgzfrmWFuc0l7fYrB9jQ+6bB8dvYsVk83iAx/teDK/0n6u0EAPAsYh/5E0X0qoM62ib4/f4XxezaO3N6jIvUOFZTe2B2rC5XISjaoIR++Ef2SWTDrYcs4Kg/3mkti+OI74oBd/b3vVu70ALsy878lYkjVokDpHtgDgUuVi+gmK0Lkgx0wjSv/hNX/uoZuNrqIMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by PH7PR10MB7010.namprd10.prod.outlook.com (2603:10b6:510:274::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.28; Tue, 19 Mar
 2024 19:28:54 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2246:144f:3bb9:60d]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::2246:144f:3bb9:60d%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 19:28:54 +0000
Message-ID: <3abd7f0b-dc88-4183-8762-f2f101402edd@oracle.com>
Date: Tue, 19 Mar 2024 14:28:52 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] iscsi_tcp: do not bind sockets that already have
 extra callbacks
Content-Language: en-US
To: Khazhismel Kumykov <khazhy@chromium.org>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Khazhismel Kumykov <khazhy@google.com>
References: <20240318194902.3290795-1-khazhy@google.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20240318194902.3290795-1-khazhy@google.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0075.namprd03.prod.outlook.com
 (2603:10b6:5:3bb::20) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|PH7PR10MB7010:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bd289e4-7d93-478f-05b5-08dc484ad06b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tV9ljpl2imqw74Ep6cpUlm0+4AKjDWb+3EVWcq7hZ34JU4sJaz6FPtwrf3goLjK3+FO24bx1S/vtuSxRXfeFVaO14CjrYPjUtTuMZ3vfETY/pOvlRo/F+I3fe/OZb4eIMZcmbQVEX7jhXLmvH3bTw3ejrMt7S2IT/rLKhi+toCmJWqw25PSoLddm9VLnCu2zPyq6rTaKg/FRHuzhzGqShI6b2P3e6a8tP0naHX6V/fq9crgNg9BrJ8EYFATj2xChun9wBp+5fkPYaFo/VkSaMMT5TYQSxOGe9+014UYEnNEQBRlMReqrhFpiBnr9puxxnH1dUqJ3CNuByJpger5wSRl0c6PgvooK/cOTyGulong01sEfzZGgs+GhLiOxu67dVdxioCEK4dJd8GT8n5k8xv2rWBFpkfIG1aK0V96Q6wHVc9q3vjn76rh74E0tYJKNesMfTLSBU1XTE/XYsVN/2FCTl98kzX1e1RJiBH0fWUqBxHIFAULWBqzlgAEDsuQA6yvIwd1zNpBn3MsQFJL+VpgwOKAwrZGc91dqTW5BMQp9fkE1jtwfzrslB7zPOgkQlpXsNCLAFi1U5NxUwNmlAOD9M8OzRBmESwxvvWPvwznAxYKgUsx5+Xl59XbVI8ScucLyWsF+fGg9R/M2ZM599RbT79Nyi2pH4taqo2ttFG4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkV5alNNbldqQTVpWTdJVm9YL2tsMzIvZy8zaGJ2MG1udmIrNHJkMGVkelAr?=
 =?utf-8?B?a2JUTzdSeU9DWXE1M1BXM2J4Y3pnVHVDdEtNVm1kM1B6bFBlYzE3ZlpYQjg3?=
 =?utf-8?B?M3VmMmxJNlZ0OFF2aVB1T3RHaC9nYlB5TEZQR2I0ME40eUZjcmZWcW9TRXY3?=
 =?utf-8?B?WkJpLzh2dDhwaUtFN2RGbFdHM3A0MzMxc3orNk5EK2ZWOWVaazZQeCtmc3dM?=
 =?utf-8?B?cWhTWDJ3NTlNU3haQ1Q0aldXL1BNSzdKanlDc0I3ajYwRy8zWE5sN1I3aVJN?=
 =?utf-8?B?TzRHWGUvQVZBaEVKck5mYzJQWVhJQVR6S1BmU091SHdleHVCUUJDSUpWR2hK?=
 =?utf-8?B?MlpqS0xTSXk4aW4vN2RLcUw5V01NdlUwYzBGcU8wQTRmakI5bUg2NlA5Njdm?=
 =?utf-8?B?bzA1aUpIWmthNzBQZHhDclVkU2s4UGtMQXE2aWVmL3JWYUhXbGFQZ3hoRWFN?=
 =?utf-8?B?aFVRR1orWC82emE0M2pMWTZmZEw3RGxQVnZjcEp3N2ZXWkZmUVJYU2lMdlB3?=
 =?utf-8?B?T2tzdFgyZzhOOXBGNDgrWHEyL1haTENLM01qUVM3TzMycERDMnF0NnJ5dm5v?=
 =?utf-8?B?YlhXMW1EeXZCZElVVjI5ODVaNnNXbXBlL05xNEdLZ2Q3TXRsbG14dmF1dVFU?=
 =?utf-8?B?TVFDVG8za0pTSVR3R0d2SEFTaERxcDIrNEJqQXhaRjFzK1NldlE3NTFLZTZw?=
 =?utf-8?B?OUFTalZHL0xhbGNERXlSVGFKWDltS3laOElWT1BuUmtRY3BlVkkrWS9XS0ZY?=
 =?utf-8?B?RGprVlNBbFVVS3V3NUI5Rm9pSmVaQ245YTY1RElVQ1h5L1hqWkptcHFXUExC?=
 =?utf-8?B?dHpUa1k2OFY4djJKQ2xMTGp0dVFUTlhWUzRuSHRybS9ER1lkQzNxd003eml2?=
 =?utf-8?B?Ylh1WFU5Y0s4Sk9McFo3cFJ2RHYvZllGVjlYNC9pMFNXdjBOZU5lSm92MmhC?=
 =?utf-8?B?b2RyT1JVd1RKcGRKaGZPYTQvNkF4Wjdnb2hxNFJPa1ZEdmpzSFRrQVBGVFVj?=
 =?utf-8?B?VXZ6WGlYZ2NIZVRSRngzSDdINk9Vc1IxL1R2cGx6cmQ1YTZIZ0VkZWxsUXFT?=
 =?utf-8?B?dFBoZjRmZFUvMG9BSkFLYi85QTdMT1NiNmd1R2xMczlIVU50S2g1UjI2WUM5?=
 =?utf-8?B?eCtlWmFSamxPZjlUQ3VWVkpkSnFNTXRQVXBCZzRvQjJqQnV3K0VUSzNEY0di?=
 =?utf-8?B?K1dmVnRkM2pwR0FsUUk3emY3UUxZVnl6YmFEK05tOUNLOGxNVXFjVE9BMGV2?=
 =?utf-8?B?dWdRN2V1OWRrVFAvNWtaUnUxQ1pMV1djeTJUbHIyQTg3cFBnNjhUTHpOS1lr?=
 =?utf-8?B?SEhXL2RuekwwRzhHWjk2cjJEcEZTTzhzdW5vY200T2Vnc2RVemF1UzhpNjZS?=
 =?utf-8?B?Y2JCdEl1TmRuSm1IUXNqSWQydStYY2o0cnZwcmRhVGJOYlVLK2pyNUxNUmlJ?=
 =?utf-8?B?K2MrNXIzU2tuWVFMMVBUcnZULzF3eEVWeGtwanlPcTJYamRpbThORXZuSS9R?=
 =?utf-8?B?NFJEM2RESGJoUGNVQ0xSMG5yWkJxVWlwUHlJUjJQMGVvY3ArWlJ4S3B4clVZ?=
 =?utf-8?B?b1NGcDcxZ1QxVi93Y3p4bWpJRFBpSDI0SUdQRjFOM2F2RnBiNFFoWWcyekdQ?=
 =?utf-8?B?L2hnVTVYdWhoejhNL2lleFZuektrUERCNFVhdlJUaHNsZEdURUhqTWJqaVZw?=
 =?utf-8?B?QUJNS0lRejN1MmNlVDdLV2Rzc1IrMkNxUWtMMW5CQlplSkdaak9kNlJFU2I5?=
 =?utf-8?B?dWZIQjBpN29RVUI5TGVRMlJCK25mZmo0T2F2c2xRR2N2RDZ1OXA5ZkN0MFRh?=
 =?utf-8?B?ZnBLSm4weHV0WWp6czBNSkxlRW1IVWcwM3Mvb2dkVFcvMVY4N1BlOVRlc2hs?=
 =?utf-8?B?ZkhWdUFCM2dHY1kxRHQ3T0g1MGJxaEl4MEdJN2Z4VXFmVDdZYkZBYlFIRita?=
 =?utf-8?B?M0d4QWJTNVlxYkYxcEQ1RmYyVDhEM1VqMFFzdTUvSmtlUkNhRnRIa3JUbllt?=
 =?utf-8?B?NExwM0RxQWhtc0VmbU9FZms0S1MvaS8xZS9kQ0hpTGIvWHh3NWJCNzYwZEJr?=
 =?utf-8?B?eWdTWWdodnozazFSTkxJU2dhWGRwZlFUcnlYWHhCUDY1cXNieE1kSDBXYlcr?=
 =?utf-8?B?VDc2dFZ2R1N5YjJuS25wSzFsWjJCTGh3Q0ZLd0MrOEU5YkdzMjZyMTRqb3kx?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: zbEpqD0s75KvQtVzuRNBndeAuWYJfNcjMkeCiD7lUv6sJzdTxVmzSEG12/UYebCbCvsA+E5W1kMWf2i2PGWLNKUEtb4BPRJKt3c0n1Rg/+QU19jk65qvPJJDp8lCjR66z9jNWhb3x8JP4BJl7n8iDjUP0hL9EBXNv2GLJoSaNmdJeyMFrhjur3PTXu6Rs+sTtKxH/BrJQty5Sz5qGxcW48hq7NuixLOWEs97SQAgVBkN6zZio7z9MeoR3QGA0m8i0hGqtODBB8Pti83usoropBt1HDceJAY2t/aSZwR9XAuCgskqLOIq3VEua3m+4iFTv6htKaPjrZnlYGAOpfum5qcl3q1nIS4x33KijgoBa8NRLGC3Sy7R6YdRdprtSUjkGvqZ7oW2yycMyrzPyZjcZaJczsHQULe7BDy9t9Fcw9OU85FobUZ0Ha1CfjcUV9jxoqcXTI/uSQiox+Kc0UcuISQfPYO7xqdoHOJNLwfSljsL3aEaPMQnDK7AOa5Esfe9szxlCS2gIBYm9q8uadoaru2P0JReIS5a/XYhegRhl2ObBBwTLBwjLEly9NRcwkUhaWvW8etHDixzNIulAhgMcq4czPpNc7yA4Rya+uqJDuM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd289e4-7d93-478f-05b5-08dc484ad06b
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 19:28:54.3270
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ix4puzSB3VFfiKqFKw3/l0cyM345SJ0bgEMxTdfmhb3mgpM3o9aNcR+m8dI38W341pEttB4PHEPNxECV7c+AWSrW4sMV4+N2d6OdD2hjrVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7010
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-19_08,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2403140000 definitions=main-2403190149
X-Proofpoint-ORIG-GUID: zzp9Yzf8E5iGrpcd2twIHuplbdxIR5gP
X-Proofpoint-GUID: zzp9Yzf8E5iGrpcd2twIHuplbdxIR5gP
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b=mR0aFyk6;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="K2bLN2/8";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 3/18/24 2:49 PM, Khazhismel Kumykov wrote:
> This attempts to avoid a situation where a misbehaving iscsi daemon
> passes a socket for a different iSCSI connection to BIND_CONN - which
> would result in infinite recursion and stack overflow. This will
> also prevent passing *other* sockets which had sk_user_data overridden,
> but that wouldn't have been safe anyways - since we throw away that
> pointer anyways. This does not cover all hypothetical scenarios where we
> pass bad sockets to BIND_CONN.
> 
> This also papers over a different bug - we allow a daemon to call
> BIND_CONN twice for the same connection - which would result in, at the
> least, failing to uninitialize/teardown the previous socket, which will
> be addressed separately.
> 
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 8e14cea15f98..e8ed60b777c6 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -725,7 +725,7 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
>  	}
>  
>  	err = -EINVAL;
> -	if (!sk_is_tcp(sock->sk))
> +	if (!sk_is_tcp(sock->sk) || sock->sk->sk_user_data)
>  		goto free_socket;
>  
>  	err = iscsi_conn_bind(cls_session, cls_conn, is_leading);


Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3abd7f0b-dc88-4183-8762-f2f101402edd%40oracle.com.
