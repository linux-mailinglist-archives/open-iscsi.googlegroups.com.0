Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB7PT56RAMGQE7KQWKSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACE96FE4CF
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 22:09:36 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id 98e67ed59e1d1-24e3e52228csf4258251a91.1
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 13:09:36 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683749375; cv=pass;
        d=google.com; s=arc-20160816;
        b=zWsk9XixOZSYt5foVldFC3Ike6/FiU7ViNMsrgqXi0XyaK9HOP/fOwzoKSjEoKPz4H
         c8h+T5BFaRrbyHpsOwsA6yrGwYrcjh9J4+gmQ2deq0dGseGnX1D1xgZc77WOtbJziCqc
         kEDndIxM63grK0KhdtjDeCgr7VBfmOYXNhCNZIAyO8R4ufFUvGUt6S+WErrcZZ8v6HG5
         rmgv3yhDHBb+Xu/rPeEw0L/TZMt9+zsvInAMmEkS0qzpsVi12oqXxN/xIlGwXvHFS1cW
         dbJySR5oLpoXA8TmJDmo+z7NFb9MZlkhpAWnWzYrn0BLR6N8PtFPF0AybT9YCBw8Izr8
         pzhQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=mcKWlhjo1vXba6RIrejZwDT/daSQZhwsUy1NpHqJMlU=;
        b=AhAof9jGOkHqQFy4PNA/dl4Du8ekkb0+V/IifeL8K9ANVTLg4NOilrASMqmSxr0IfI
         YQ9JoAOLP1jKmzucLTISP6fcScTVwXtERsSHjVPyUNFU2JbxZuQyzuwr5ZqNVyK1/DBi
         JCV9LLG2W67vFpLQVL3OJyzGumc4LS/1ep+1GgSb+BAf9+3uD6KVl/thzDWSSy6dSXlV
         DNBxEsknzSiumISWEiCSsI2O+I7XsyJubPwUnXzyHRFCEAV0yIz3J0GhLEWktZLIATQu
         rFfvcv6kzJ0n4Yr6+K06m8TeRftauc5DIl1m31FDFRAlBl5JG2J81Fw9kDb9wg914gte
         8t2w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=x9vp8i0v;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=h3z6g0IJ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683749375; x=1686341375;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mcKWlhjo1vXba6RIrejZwDT/daSQZhwsUy1NpHqJMlU=;
        b=N1fJOUY8Otdbj4hnqBBUoDZ9jQISCF+5gnDJOCXoQ9Ar5eEORvQ54h2tkKq192fYJ5
         dn/heUcK28St7uMJXeUmi9QDiXZIEHxM5ytR1r/EIh5BIHpZojTLJq80Pv5VLmk9kkHS
         /kgUaIKTsD4rwJAFpG5PBFv5LxH27L4W1CXYVTAnNg1VAoPmjoEw0gWM6YgsqOK7dhEh
         SYCZ4QLZxBlzmEm+E6Pd7dkalryDf8k93c5/3n4f1oPzvJPRklIbtaaYjNRkwHyAa3X5
         VWEUPl69JXfmLcScT+0XeJiYIhmbOinnjdpwXSlq4IykKtXy3OL4ZM232YZWhbXsg5LB
         MS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683749375; x=1686341375;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mcKWlhjo1vXba6RIrejZwDT/daSQZhwsUy1NpHqJMlU=;
        b=brkfslt28dkf7rMNuonvG5G2gt80a5iwgimBdxjbqeWQdZQBtzPsNwkVjzcehteTcK
         +lr7o4YcOkJu727nWANljqS2KUqbZuJIYc6b2d+90r15rbqacgdJHti50shGFHiaN+Ec
         dAYvRW9ZCQXbebRja3lUgC18xizhAVsUySePNNzbsQ4aYciVJXpcY8upMDywLhxr+knX
         pCmYyFjWBKyoS/V7NC9C/cbJIkRyJWekQBDNArKwq2V8CFbeTNC9LlkRefJb9KHAvyjM
         nIrMJ05kz5XFA/VPmLL3N3c7pj/A8rxSIKRXl00udvvwQUbJV8eKAlcHqPUAeNRY7Uad
         l8HA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDyCLOoL+I5qMPd+ptzpVGCnClxVgSZdukW0Tp/9PnahmDOG8TWi
	mJoyTCxXe0DluY4dgICWJVk=
X-Google-Smtp-Source: ACHHUZ7pDLgZVNK7vWfKs4ee9kr2Qt1Q5lcYA1hJE8l6i8U6EAaKXaxDXQcd3RqQTzziIGVjZaKGDw==
X-Received: by 2002:a17:90a:d80d:b0:252:8154:790c with SMTP id a13-20020a17090ad80d00b002528154790cmr254011pjv.9.1683749375101;
        Wed, 10 May 2023 13:09:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:d10d:0:b0:643:9bc1:e336 with SMTP id z13-20020a62d10d000000b006439bc1e336ls2196652pfg.1.-pod-prod-01-us;
 Wed, 10 May 2023 13:09:33 -0700 (PDT)
X-Received: by 2002:a17:903:2289:b0:1a6:6d9f:2fc9 with SMTP id b9-20020a170903228900b001a66d9f2fc9mr23022453plh.30.1683749373108;
        Wed, 10 May 2023 13:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683749373; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ia+kXb52O6HuU89M42yCLU6uTX8M9abrDN1rWr4Mg1e6EyIEbhv6c0j87Atf3XjCNj
         cd9NMTnsUWq2qEf8KMQZlYSNV3+V18At9/GLdFawe+6YOVCx4/KvhKHqLxSQZ9ZQpw/t
         KJHqvXoYQ22ZQiM1lY03g1vr2JEKJZhp0xOlzrxXRXHaFT41HYkiGZNEHq3T6zz1g9cm
         YtMC7MHrhkBRUIyAO7bS+0iQUkO8T+mT80rxeVVnH19imIG7Vwld1vbV/Ld+irmYeZR/
         vZVUpHctu9KNWBol8JL3tIv9kRYllVhycWS0YFR8JaGCzQSwePHX0vLZxAPma05JvAp0
         ku1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=lsIyshZapcsC9QMhkeJQBW/IhQs9J2dq5OWl3Q5WhGg=;
        b=FQYHGmjKKBpcTPHZZq4IaJz0zsunHvorZyQk9bhNjIFR3oVXHuBeSDVVydA8sosMr0
         9LAYngDlCtOgW1lng/60vUgaDHWSMF9i1eJGWl0TA8mUxSJOrOR1xrIFOWCMMOJ84kum
         B279e1MzVGficOcm2WGOerhWjTzW82i4t21UHQuvT8ooEDxZhwEVGWSMbWeuwmJ7GFzD
         mfBOYhYAh1ifiipDdfkUpPb+LPuPkhAC0KxIcKqlYJj7Uo0qFz4tha6Bx53wk04r3Nti
         icaMUz+osrB18vk3hORaSl6TasoMe8otKUT2q0a786jOTyJX9zsVVDp7JxpeBhj59SUK
         u/0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=x9vp8i0v;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=h3z6g0IJ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id u10-20020a170902e80a00b001ab132cdbbcsi180667plg.12.2023.05.10.13.09.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 13:09:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADxAPD027698;
	Wed, 10 May 2023 20:09:32 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf77g5jpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 20:09:31 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AIPxho024174;
	Wed, 10 May 2023 20:09:24 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3qf7y5sds4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 20:09:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kT1aBaFo5Dkwmq+q6rbwZO6SSnwVgzMWyp6Avz06GXoBQHp0p4mJUkNtHiIul+t2kKuKrDsypnVLuNZZ9ZLON0H2PXv9Db1QIU3AC2qv86iMPlJAMoOF5aqEP86kDBMTsaHxU7x5LKEHt4Ygeoioju1xsQinnppBUFnSsvgFCdNOJa2Pr7sdju7Pm/70OKvQEtGX2WUJjK7JXunKMvvCo2Gxfa08epnRO7jLwiaKj15i1S3AelR4oWaIIUb/k0NVGOLTiMimJJNETmPpfAEfWYD+XbyZXAfPxTBJy0PCbhjmeAyBpHLhjtOD8VHhge/RxmPYrS5ec03GvWwSOqUdgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lsIyshZapcsC9QMhkeJQBW/IhQs9J2dq5OWl3Q5WhGg=;
 b=lnhOvEbX3wK6c+iaBIaWqM+3CYS77V3bzELGDKOklZmNMLFSyWP+M+3Hmi5Os5W3krwDkn6FoM9f0/zu4jlYWm4W3ceVpRGB4Cpte8yjbpqa1GZtHCFzrvzRM7SxtKter5g+8KDlYzYJoay3TusbfrpBmLNJ+i3tkI69c50uXhbXdcyC7L6GhcAKlH8LZvepEFToUOR3S3uA/FLdQq3daYqvrJ4yliBbUPU+dVfpWerXZRc9U1wwIh3wSI+YD6pqFaMXa26Ny5WxltNPA1omvRngvkk682Ke9crFIGukotTjzdCjA9jElL1hMaQgbRH6OHWfSzNlRHUWYAbu9F+1EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 SN7PR10MB6570.namprd10.prod.outlook.com (2603:10b6:806:2a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Wed, 10 May
 2023 20:09:21 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 20:09:21 +0000
Message-ID: <6ea35c03-09b9-425d-ddcd-8cdbf99f4fe8@oracle.com>
Date: Wed, 10 May 2023 13:09:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH 11/11] iscsi: force destroy sesions when a network
 namespace exits
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-12-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-12-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MW3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:303:2b::29) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|SN7PR10MB6570:EE_
X-MS-Office365-Filtering-Correlation-Id: 08abca9d-c720-4c0d-d6a7-08db51927180
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9rnBFiEpBfTsFymhgkhXjPPvu3mlfBVrCQqDKqg34km1KXIeviZV3Fb7YFRf/zPrkFRvjhK//y5HwM5veW8wCx5yr9SUWlrpZru+1ntI5IIWNFcPuaYl5lbpqUUz8/vdRryXKAMkwCGQyuSORjD9hyjhRLn7WpNUoigxKUHgmUZO7XcV0wVe3my/szAw9Rysb4cyaW9vSrHEQU/Fh+QrenV3OmEHFMFBlQ36WypR+AnT9kd+97kY6DS0K6ToqKpQytE0TVcHJh37AFQaa5e6qqkRdtHI+500myp4pFqP65BFgJjf+9RzAwYKVIkjyhY8FMPeWbMFMUkZ0YxcuPtocwh/JDCTbbbeNGD/ongKeHZLB22OALjcR6/IuJMt0yBSaydoT4VAtY7+ciOr7zcqDGbtBHvEfsATypHvjQ7Oq5KueVPB5g/PCPcDnSJxw2CqhY8Us6rbyDVhVl3J7tHJ/Yd3IBCZT0WcfFb85ND45NVqz589Z7EInI7ZSpyzg7X1dTTdtcJqpzk7QuE5Zy8KViPFNQJyrO7sgEWdBQv17dvaz0Pk0aywPzotO23wJZZC6BLZDZf3QG9wqPRNJ3BVZ0rEGDhW3wZrRUmGpKylxba66bBWYVyL/+ahykcuaOEj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(39860400002)(346002)(376002)(136003)(396003)(451199021)(86362001)(31696002)(36756003)(83380400001)(66476007)(66556008)(110136005)(316002)(478600001)(66946007)(6486002)(5660300002)(2906002)(41300700001)(8936002)(8676002)(2616005)(186003)(38100700002)(26005)(9686003)(6512007)(53546011)(6506007)(6666004)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVJLUTNQaFB5RnFlcmFjcDF6SXVqRXVhT002akRKSG9YN2ZmY0haZkxOSm5q?=
 =?utf-8?B?Rko0S05HWEUwZDZjYUQ3cWhIdjYzVnRjMGlMd2h0VHJxQk5hQlFrRGNkeU91?=
 =?utf-8?B?bjllcXFrZ1cyanlLK3A3cUNSRWpNUmpmcWx3VldZaURrSkZpclk3bGJCTjEx?=
 =?utf-8?B?azFXa2xleVZWalc2c0hxVlBndFRJZXc2SGxzNDAzYUJlMmhHVmZaSzZFU1Fj?=
 =?utf-8?B?VWpRMXkvSlZCbEdBelpxeFZteVR4QzZTWG0vb0gyVkhMMW1VcUJlZmtHcEhP?=
 =?utf-8?B?TVNYbnZnR09HcnREd29jczhQY2tDNDNGbjBWZERIdUg1VzllYjBTcnZzZjF3?=
 =?utf-8?B?MXNCNXQvdlIydG5FVkZtYzhkcmo1UDJTUW1RTUFjQkhoNGx0d0QxMlNPdjJx?=
 =?utf-8?B?YmFUZXNSWEk0SFpZQ1d2Y3ZPMEFZOFV0VWs1TUt0TG5id2lBZWtML3hWWTZ5?=
 =?utf-8?B?amUzSEpZSG93ZldZaVo2V3hDdWY1YjBKNTZqMnB6K2NBYTlsZ0grREptU0hH?=
 =?utf-8?B?Tnhmam85VWNYdjB0S0U1cFVycVhsT29pR21wTzF1QU1MZzI5ZXZKYnVyNmJa?=
 =?utf-8?B?aEd0cG9pTHdOYUl2U3k2Y25ySW9CNnY4ZDB4ODQxbFhYdkxPVisxWnNWcnI1?=
 =?utf-8?B?S0FrOE11ZmczWjFhczNqWnBOWGRjT1RYZms3SHZ2dzFGT0g3ZnNkdkh6ckQ4?=
 =?utf-8?B?Z0NrMHowMUxDTnN0Rk5SQ1Q3OVRyY2JXNlZzZnlwNlJNQUNBR29tWENRamZC?=
 =?utf-8?B?Zmh1SUZkdWV6R3lsSzNtQzVOcXRvMElqTi9oczFERHZYOWJJb05hSGMxQmlR?=
 =?utf-8?B?SVZUWjJJQm5PRFNtKzZUM0RPb2ZyNlBWR2d2UklCR3BRVFcvSGJ1QktkUEsw?=
 =?utf-8?B?dVVOMWs0anliQWlBVXppK0xvd3F1NHBmd3kyMnVGdXg3RzNHVVoxYURLNXhB?=
 =?utf-8?B?Qk1iL1Q1d1gxbGJqMWI5YlFCVEg5K0lGdEJWR25ZcC84OEk2WDdjSU9kcHVh?=
 =?utf-8?B?ak5lWmFFenRNTEIrVXBpcWwxQVNmOFlaR2pkWnFiblVkNTF6SnZ3NlV4b3hY?=
 =?utf-8?B?dlgxTXc0RXM5dUR5KzFFTWU0ZGVBSjhtWDVYanFXVXlrY3BGUmsyLzFOTUhJ?=
 =?utf-8?B?OG5VMjV5ay8wWVZHWmVFbDVaY1lHcHJBcGJYU0tWUlpTbFVMVE5DQjFxMGti?=
 =?utf-8?B?cGRHcm1NNTB5aFVNdUJQVUlpSEd2eHdhZmRJT043Snd4TnNUNmpFRk9TaHVH?=
 =?utf-8?B?b2JKaUZYZkpEU3RSUkROazVNSllXOTNpMUR2L0ozRGhDUEhrZGM5OFk2VU5Q?=
 =?utf-8?B?TUhrK2lxQkQzZUZ6alU3azAwckowWElnZWZGZGdDV2hYS1dLdDRSVm9hVXFh?=
 =?utf-8?B?cVNSV3Fkb3hLbHdQZ1FmSExWUytzejdrRTU3ZFFjRzBVZVhTUXM4OGhxOS9j?=
 =?utf-8?B?a2owUE9yOTQyeEhwR2xRdmhUcG1BNngzdUhZNkIxd1hUVWUxeFgxUEhZd0xj?=
 =?utf-8?B?ZXpHWkxNNkhvcDFIdThmNUI4aEgzY0E1VTR1d2VSaWgrbDI2WlFUSkRYUVdQ?=
 =?utf-8?B?Q24xa0ZWV0Y1aEpVdlpxNWVabjZ3Z3JkeVEyanVsdzJrVUJaQldWYjVZeWg4?=
 =?utf-8?B?UERTS3ZJcWhTRzhaaU51QUpRQ1JUdjZCYXFZdWZKNlRGQ2c4bzFyeHBTczB5?=
 =?utf-8?B?YlFlK1p0S3hNazYxN09HZFlVeVAyY0RQOTQ5RG1tZHF5dFNoNVpFbWh4eDJp?=
 =?utf-8?B?TS9xNDRtN0ZTYjRvL0JibXhZREdhMkU0SFNLVDBzVjRYV2RLOXhFOEx2U1lH?=
 =?utf-8?B?L3pHODZoN0gxRDUxbjgxTFlJV3FTcm5EVnJwWDBzREZOaE1nSmlKeTNRK3pL?=
 =?utf-8?B?eDNTOVpMMFMycnRJc0ZzY1UrYW9uam5vSGVXWSs2OUpySTNpU3l6ajVVdDNB?=
 =?utf-8?B?RDczbEpaaU4xcjB2RnpRSmVISFk4c2h4Z3psQ1dRcXpQM0E0V3A3OU5SeEhC?=
 =?utf-8?B?ZExKbEZrUjRVbDlzTzlydGJvTXJhUno3dlV2cXhadmMwb0JtTUIyKzRZaGNI?=
 =?utf-8?B?N3dRamZsVXQ0enBpWExyV3R5N0xsdUJqTVYrUlMxSGZ2bGgyM05DdjJEY3B0?=
 =?utf-8?B?QVVQQWQrZ2diQTlwaGFqL3I5Y05weXFUcWxuOWIrME0vdDR2NFpxVWp2MGhD?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Us6sA25SJRu1KxWq5DYAizObkEgp/vWh9FQc+2HIS5XdurM+zM8zNHX9oeOkXSJMWJGPSIkg6ESBzW7AGt+MfJSxCHTf96W0lG2PWl52TEAIlX2pIei9n8V5nWoxbVvxsuhs7PoV3kRCV4k8EHtO2rvxUz4Bwtarwbsat+Vqp83BlU75zwHSnKoxluTz8gXFM/t2KK/iuMrLY5l8e30aP/WMYfAqDdR1U15ZNLAihRuIsEPF4YLHRke/jCGJNUwwCQ1YyIyrJuXZ0+zhQO5Q18Ap1GDsCD35K5Wa0fai1QTVLqQg804lwp1PkmYvlA9M6frriBFTnCLy3YRsECo8t1TP0UfI8+zzdXASmdvZ15EM3lL5pZtu9pf/kZHBIBIHiyR/W+FwCIIL9VnqMoQgNF0I7pEOcXIMfuVhbWiX97FKRT3sz/5Mu/XFd3nnX6CcwinmireZbJguosD71HQd6GOPtv1F2tLZ66NaIhAJ/ajeL1jST5U4abtVQkSgNx9uanV4HYWwOljOh40pJF5M0ycpxIomz0cUSacfGl3VSrENQ+6bqOKAOg7gC2USxh902l4Z+gCkT12oQuZB0H4R8CwK/VlE3WRDGzsr566aIvbMNLWC8oUR6tSP3Z9NK5tcP6r5shxUpu859346MgBt5GxNjK/kEE16WmNoapHTDJWQbUsKmU2kAMA+JoBpkB3cy7L8Pj5p4F2FDvJhIZEzICZaQAjHx6OlzSofVdKbrOabYwhGZTak518oqjuZ/aG9slW89PIrU3CnAkjVV1MkpdLF2E//GR5X5HIEtFCodCOR9fQn2pj3SJ/0iw0f9oQZqqAQsbySQFLKMYf8iIt5aZJdhOy3gY2+1hEfFLx/jZw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08abca9d-c720-4c0d-d6a7-08db51927180
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 20:09:21.6912
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LIdjrMLrQLOC8Hul/uFGtmeoya0RVs28z2w0yU7uOJ/2ISVVqBWpZsvL2eTw+7kYaq0NPV/aKkZ0YJ1dYyLxYmuUhCdrk3vqK0oiRBX7P6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6570
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100164
X-Proofpoint-GUID: C8rDI_baE0Gf4uEq7ctxPKyTyvDSMtAa
X-Proofpoint-ORIG-GUID: C8rDI_baE0Gf4uEq7ctxPKyTyvDSMtAa
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=x9vp8i0v;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=h3z6g0IJ;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 4:29 PM, Chris Leech wrote:
> The namespace is gone, so there is no userspace to clean up.
> Force close all the sessions.
> 
> This should be enough for software transports, there's no implementation
> of migrating physical iSCSI hosts between network namespaces currently.
> 
> Reviewed-by: Hannes Reinecke <hare@suse.de>
> Signed-off-by: Chris Leech <cleech@redhat.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 15d28186996d..10e9414844d8 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -5235,9 +5235,25 @@ static int __net_init iscsi_net_init(struct net *net)
>  
>  static void __net_exit iscsi_net_exit(struct net *net)
>  {
> +	struct iscsi_cls_session *session, *tmp;
>  	struct iscsi_net *isn;
> +	unsigned long flags;
> +	LIST_HEAD(sessions);
>  
>  	isn = net_generic(net, iscsi_net_id);
> +
> +	spin_lock_irqsave(&isn->sesslock, flags);
> +	list_replace_init(&isn->sesslist, &sessions);
> +	spin_unlock_irqrestore(&isn->sesslock, flags);
> +
> +	/* force session destruction, there is no userspace anymore */
> +	list_for_each_entry_safe(session, tmp, &sessions, sess_list) {
> +		device_for_each_child(&session->dev, NULL,
> +				      iscsi_iter_force_destroy_conn_fn);
> +		flush_work(&session->destroy_work);

I think if this flush_work actually flushed, then we would be doing a use
after free because the running work would free the session from under us.

We should never have a running destroy_work and be ale to see it on the sesslist
right? Maybe a WARN_ON or something else so it doesn't look like a possible
bug.


> +		__iscsi_destroy_session(&session->destroy_work);
> +	}
> +
>  	netlink_kernel_release(isn->nls);
>  	isn->nls = NULL;
>  }

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6ea35c03-09b9-425d-ddcd-8cdbf99f4fe8%40oracle.com.
