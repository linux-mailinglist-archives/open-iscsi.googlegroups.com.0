Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB7HB5KIAMGQE2TMM2HQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC984C5899
	for <lists+open-iscsi@lfdr.de>; Sun, 27 Feb 2022 00:00:15 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id f4-20020a17090ac28400b001bc40aa09fbsf8097316pjt.6
        for <lists+open-iscsi@lfdr.de>; Sat, 26 Feb 2022 15:00:15 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1645916414; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6gYYKcQAqhKu8YnkwusNpUXlDgZ4oTcDzzMCDTSVSCv0QL1TD1W5UEoDncBf4nThk
         fobGvaWHmYR8iOzRjiTUrBgAdgDcXlNG0orcxbAvDPhYZKCxpDMpJa/T9R1n9qJkBK/Z
         uM8ra901pYXqhXV4zeldhSGZ8xF6QpPs0uiHTvOUdNmsOoqPjWcqMMj40KyoBaQ7wkUm
         bzj8QmfnKFoAd+WKMcurspPYJPqiuJl8DBMnIhE5oSxo2JWoHzNCegMuiOY085odRJd2
         V04LxC82Wqo5dMx4Ez9VGzlFBstpwXLTcEWC8pYpOMCpEXmhPQGyN6Hq5Y5pNlnAFPky
         iZ5Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :references:cc:to:from:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=kKK4EstxoPYKVomQuZHctguLHD5egwCSJlPi1kaOQAo=;
        b=roRKGFCmShc+p6A9kwBuBQuSripOgY5xhFkRm1C0+10NzPA62BKk90DHeYS1zAxHRi
         FN8RuF5jKSjCgtCGkO6ChM2J08uhETm2vP/LmkNPjQegkcagD2t+RyEguC2nCgmwUW3o
         1Q/AhtJ+ugWKEQlswW8BJrEEc1gQnBdhqmiSX0EVN37Zc2TiE6UdHYQVDKCNfhFIhBml
         mbr6I1nMXRDWxghuR8JUfPzp1lDhrsSl+Pd6nOIM+LTOh1h8KmozBAbuYdFdcAJMn/9a
         JX/sqPceL/GDC7UKNrCaRI91t97ajU8/e+Y40Mj16k3QOfisYY3RqFBPZXwO14J9s9TP
         Mg+g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=nTc3amfL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tVbmC8K4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:from:to
         :cc:references:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kKK4EstxoPYKVomQuZHctguLHD5egwCSJlPi1kaOQAo=;
        b=kXxykoqCCBxCI0hUlCvhCwqs/muO854G/gBOZ4Ilr+v0KGDHyyESoRim+AaPzaHLn0
         nkiT/L2m5yut1HM8J/98KT5HOi1cfi4bpUZd59GQAwF/7lGimKhmCrDBlg3Qt42CNvLb
         4vmti/7ptexxo4pO4lHI15sbPpyWtiq0iRvUySzmyNqhbZg1YnvFNggokI3PdYhod5Gy
         B75ENfg0DgewG/lKxnIc8KihOXeJj/QhDyLnqKq/WGxjJ+8EQoeUR/iurGFmSPB4RzHR
         Ybyb07OY7+4fkl7JxNsZlHbxLmwYiMhhXCDtAyMGro4XAp0Oxm3Q3hrITTUDhc0e+wzL
         K0wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kKK4EstxoPYKVomQuZHctguLHD5egwCSJlPi1kaOQAo=;
        b=MnJCzfXoinBFSgCgwidK9yMVWpa36UIf/eDAeRzi0NV6YPJat9GH4BPz6h0cxBQ956
         muN+LQzMx3psezHj0OGgQ7i+jSJhmWipNnBlY7surKR0WIEwKa4npIEuBvUEnxdiOcqc
         T2MqKoc9m1SIJXveb9FJi8gfdJPioX12BH62lIIcD1qSuh2p97sHGhCt48rn0Oh5Ug0u
         4E8vZ+kZ6Q5f/B8snuPRlKahaJo2tpsXFgCoKfSEvFSff9e3Omg1GcJDWB7hkSFGlKcX
         ICWnVIhFq3RNyFwO3fachNcv3sUogtPVIK7/wqhZfwq2t5lFmvaEnAV9gZDS0ER9Sdoo
         olsw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530LQ6iO2UNMVOu8HoAfyZLVR0M723mvjLg9okvzaApogBvm8SoV
	y5zny7hN0TDrhdWpKLtt2qg=
X-Google-Smtp-Source: ABdhPJwfnlLuD64EZWKxgoqDIo43QlkYSUBP8NxyXR9FeijXoj0/ZzBGVz/e9jZBZi6pzUMU+rz6/w==
X-Received: by 2002:a17:902:6b4a:b0:14d:474f:4904 with SMTP id g10-20020a1709026b4a00b0014d474f4904mr13990087plt.122.1645916414041;
        Sat, 26 Feb 2022 15:00:14 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:3a8a:b0:1bd:e55:2d34 with SMTP id
 om10-20020a17090b3a8a00b001bd0e552d34ls1820094pjb.0.canary-gmail; Sat, 26 Feb
 2022 15:00:10 -0800 (PST)
X-Received: by 2002:a17:902:8498:b0:14d:cca6:741 with SMTP id c24-20020a170902849800b0014dcca60741mr13682683plo.16.1645916410641;
        Sat, 26 Feb 2022 15:00:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645916410; cv=pass;
        d=google.com; s=arc-20160816;
        b=TUZrM/5QUrUGo8Ofq/cFAWPZbcJ71hd72mGIN1rsuUzp3/XE4Y+1XqFlCZnhEhduS4
         j4pi7F2XWs3nnOCW4qCGmrRpzQANP1qVjk4Bx3MeptStiW34ETV094f3nchDFs5X8FCp
         FuR64dSg+diH671iho2OUMyT/vISfae0OIphBmoeq9hiDL/w4a/Uy68Sj004Y4GqluCu
         7cebpV5yNNgu1cBUZGvQJ3JpwziyE8ONDNLqLX62BBy6tIxh7aAb8jsk7lFc7tqi2qrn
         jrqrrwomOY6WLYEQ99dwvCOpMcHvUiG1RSw38uW3SkauOC8lE1KaU7l62g8lBOS32uDE
         V4GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:references:cc:to
         :from:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=GYx7z8uxckmu/aUZwdCeqO1U8eXuLKDsY08nA1uLWXE=;
        b=DcPQkZvcDdTfjXTSCOCxRf4pN1DiVvuCX+tyXVbZW6Hb7W7OyKTzUEUdj7fL+P3Y9W
         bp1MJeWmHiGpEfaYpGXn5a2UaRsZl85OFTWOZAXNS7NEZPZG9sFE7UCBDueXM9Ar+oDC
         JRDT/4sp+NvxzlnYL/6IF5x2SCLyPVShrDrKB5c8EqmW/OpeRgUNzlaKEt0cFvvPAZBx
         emu69nZRL1TNa0+RH15Bh9F5J3G04y9s/TNJoT2QSuK0dANIVp7m1FGXZxfP79WWChZm
         mrSbcB4xz6ysj8UO8pxj0SCNj47J01e7UPF7keITEeT8Wg2XhL5n2ZpCQKiPvTz23K3r
         mVnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=nTc3amfL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=tVbmC8K4;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id q3-20020a17090a2e0300b001b9932741a2si1065796pjd.0.2022.02.26.15.00.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Feb 2022 15:00:10 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21QIHOf4008190;
	Sat, 26 Feb 2022 23:00:08 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3efb02hbaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 26 Feb 2022 23:00:08 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21QMueW4129187;
	Sat, 26 Feb 2022 23:00:07 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by aserp3020.oracle.com with ESMTP id 3efc11pd8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 26 Feb 2022 23:00:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7+xRTPXZzCWA9qemz4ib0xa36xAGh3veb+H4CxQmBUVxPVbKHmgofAZ+wPEdOYVUf1JDlpNZctpP1HCY7zWSwRVqw6I+pg1+o7XxbZz+6aYVY7epB4fXRpPI6ocHiRnZMwcltBcR7bsrMu36gHeZsLEgcbpSVlvPts6xrmZ+RFCI9ccHZ+b8rgLq5/NfScp7iRXZKbapBDL8bbdvGgr8OgPQE/51x25RebUCWxipO0qNd4jtWV7Cgl0gseJcX0F/b1vdAa3Kdm2d9KkZBfAd0cG+z5xchVaTHLtZztjh95Bg2vK08i5DRFJc8pC3pgI6Kyg2H9A48vvM9BPnRWwbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYx7z8uxckmu/aUZwdCeqO1U8eXuLKDsY08nA1uLWXE=;
 b=lDD3Wfcrg5c/WvZTyQ6xde7S6zvRF9RsQ1p6KLAfZ2WXUyZz0uFvQ0Snpav4RDxQOvIpf/ErytFxz5H9Jgnj7s41AjZXDgpfb/VIQy0zBr6kLYE8KfBoESTHZ5koimq/JW2NAnZZA3VQi95+9KasX75h74pPey0cvny/vO3lFFrIgHguo0EnnUqyEkHJCTy4oM5C+qPXu6GvRlPs9pxcNOTEkbKEf1OmIY9XUlkfkPxlv1Uws5Jtq8fTPXdOqlo1TipSEZiPt25en85QuL6xVVZcLHrvHQL5C6sjN/0mTZfNzY0vCZJBeN2pjIA+7edcErg5j5n/PqIye8MaMVbyUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 MW4PR10MB5750.namprd10.prod.outlook.com (2603:10b6:303:18e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Sat, 26 Feb
 2022 23:00:04 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5017.026; Sat, 26 Feb 2022
 23:00:04 +0000
Message-ID: <ec8d0b97-e94a-21e1-acdb-e90a7df39b72@oracle.com>
Date: Sat, 26 Feb 2022 17:00:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Question about iscsi session block
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
To: Zhengyuan Liu <liuzhengyuang521@gmail.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi <open-iscsi@googlegroups.com>,
        dm-devel@redhat.com, lduncan@suse.com, leech@redhat.com
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com>
 <CAOOPZo4Z2x_W7i=Vbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg@mail.gmail.com>
 <be26ef80-c3cf-713d-2a9f-4fb73cec7e17@oracle.com>
In-Reply-To: <be26ef80-c3cf-713d-2a9f-4fb73cec7e17@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR07CA0029.namprd07.prod.outlook.com
 (2603:10b6:3:16::15) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfda1d5d-68a3-43b1-6380-08d9f97bb981
X-MS-TrafficTypeDiagnostic: MW4PR10MB5750:EE_
X-Microsoft-Antispam-PRVS: <MW4PR10MB57506F2541BB6333ACCC6553F13F9@MW4PR10MB5750.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HOnWY6IjpmJrqKzseKJp2uud+YW1Soj8t/amdgkFi0BhhNy8LLHLq7WXIvVfxhzG+w0/hGTgGZxUeBTbOZo7HomMjS6gTyp0rxyXWAMn/wcL5XBtKVPfN5C83atUonaibAeregpa+VvVCh7AzhWwquBNTi1APT+dB7m8Q2Icye3xAheTiyLct9+G4E4eujhQhb2Jpm4g1oEK6uFC0Dj7/HtXM6h3Z7dEtumuBMkxKYFzdEVyVRbiNueOZk6ho62wkeM4Szg0wcyiZ/iJ78L7PwICfJGreiyCyYK278PnFXuzwqfBVD2lPD0jU/gvElYKUmuW/7FyCOLauClhbezDFLAsbzpK3oX6GdadsGRRsk4OP5xLcwfE9DFlUImcsL20svWaCdgRTQMaBa7w+YYvrkOz6/nrSLyUDYuuBx8oyyfswQDi7Vz2yDY72XFXS+ts1LbgKmHQppgUJHfjY0BN3awkA2fo1Sa4bkCUBqh4eKEs8rPxvkP5A8jAARzxf/gIeixQZ+TLX2E2d6gN+tPUkUD6Ry/3O1d5nq+aOyDo9sutJg9JlUOK3JdU8UTW3qQD76Smt1ietKVFb0EHlwiKhElaP89W/TK/QSPzvBSxDq/JBZEz9cxKIGQuCBhrqTDgGBV1+XgJMkxRblkNYLsek3ynfKGHj53tnjRGaLTS48lSTkuD8PW1y4zUzB4OEhaPssTY9l4v2FehqinF83xDJAIfzx0vakbFeoKVRpHJ2Xw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2906002)(5660300002)(31686004)(66946007)(4326008)(8676002)(36756003)(186003)(26005)(38100700002)(2616005)(66556008)(66476007)(53546011)(31696002)(8936002)(6512007)(6486002)(6506007)(83380400001)(86362001)(508600001)(316002)(6916009)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2VUU0ZyRTFIOHJXeUhvQnNyTVBuSHNPWloxYjVwVW5LMlA2cXRranZZckxn?=
 =?utf-8?B?UDlFenFybzNhclhIaWY4R3o3VzFYNHRzcEVlNi9ISjhPN3U5SGdRY2hNQm1l?=
 =?utf-8?B?a1hWdSs4dmpsa3hmVGpUQ3BTMStFOW4rUW1QcDRhL29tL1VENFF3RXN5TnRo?=
 =?utf-8?B?N2tnY3ZRUzNuRHUzN1ZSNG5jOFJUeEZhbVEwS0EwN29Wdzk5UkxWWW5PYWFo?=
 =?utf-8?B?WFE3SGhzTE00Y0o0K0VjUUdhempPNzJuTUNZN21GblZKNEVaV0lRcE54clN0?=
 =?utf-8?B?dU1FMmpUdElpblBFUXBiNHBKRU5tTlBodHRGdUZDOTZtMDhHM0hWaWZBZmk3?=
 =?utf-8?B?N1VPT0tYSTB4YjZtb1pialNGZlg3UDVJT3pINTZXODJRQkliN3owM3ZWK3dt?=
 =?utf-8?B?Z0dCd2hGVmIzQmN1aEoyVzA0VEhvdCtsMDdzK3F5cXdLWVRISjUxVVNTYXhT?=
 =?utf-8?B?bkoyMjMvOWpwOFBjZWlJSGNkSDZKbHBkNzNvVDdUMFNUZjFFZjVYeERIaWlG?=
 =?utf-8?B?RE04YTlMdStYSU1RR3EwK3NyTGlLZzRNWDB5VmFZMUsyQzdhb1hsVTdkUE5w?=
 =?utf-8?B?MWNENmZmMy9QVzZ0QWpZditQd05CL3pLMmIwNkg1alZFdWNmMGNNMC9NQ2VO?=
 =?utf-8?B?UEhxNXdkejRaTmxzMXNSYTBCQ0pHTFFSU3JpZjVGWlpLV0wrZDhCQjBwczA3?=
 =?utf-8?B?V1M1VnZXcC9vSlVyWUV2SXQzS0s5TlY3cVpha0NXT2YxNjA5bVg0cU1mY0Uz?=
 =?utf-8?B?eVFMbmhyTTB3WTRNSVdQc2pzMi8rR09ucjNodGlMQlFCd1dRb0lIVHp1N0lw?=
 =?utf-8?B?TVhHUW9wcURoZ29tcTZJR2hnbjNCcGxadTJJbHUvZGN0eFZWd1NYRjVQQ3JD?=
 =?utf-8?B?STVYVFYyWWhTNXMvUkFrNW92U2tkUFBaQTV1RWYrV3ZhVFRvbDFGQWNlZjFN?=
 =?utf-8?B?K015YkR3a1ZZNCtjcjI3Z3hoclV2aVFFK2FpOTdSeVJ2Q2VBMWJ2SXprMFp2?=
 =?utf-8?B?QjBST1oycjJSVnNaS1ltald1OEkyNGVGS3VvZHF5eExuYzNYUktaMDErSkE4?=
 =?utf-8?B?cmdWUG9tVUszb1Q5RjdhVlJDbFJ0MUgrVmpHZzJ4dm5kQW0xWUM5YklSaDNT?=
 =?utf-8?B?eXpFbWxjY1V6c1ExTUJyalkzcXR3SUxpTHNoUXpGbng4VEVIUlJzTWQxYkN1?=
 =?utf-8?B?L0E1VWp4Ui92TnlaUCtacUFhZXlrK3BCR1AvbXp1TW0rdVhjMFo0ZG44ZVlm?=
 =?utf-8?B?ZXowdk1walgyV3MybHROT2tYOGFkMmNWU1U5WWlhY3ZZbVMzeUtNZ3V4RUM5?=
 =?utf-8?B?TTVVUVV5QnNaNlRVTGxMRGRLYU5Bd25HMDJwbllFMFVpNWd5WXY3VVNRVndu?=
 =?utf-8?B?dUZxMncvamRwcjRhVitveUpjbGMyOXRYMDlmUHl1b2hYcXpkblJCaVAvTGdX?=
 =?utf-8?B?ZkhaWFpDbVdOZHdKMGUyWERqdmFNdHRNK1p6R3gwakVybUdVdUkxS1NBeEMy?=
 =?utf-8?B?cXZqSm8reTlZbmVISW01Tk93WWJxc2cyZkxydVNPRW9peHltMVV1ZnQ1ekox?=
 =?utf-8?B?MENoQ05OWkpYbld6c3JEVXR2YURRZGRreFBQRFJUVDhnUTdDNU01VDFqS2kw?=
 =?utf-8?B?d0lyMjRoR2puWU84eDlDdHpvSmkrRjhXMmdtaUtvMmFHd3hpbHNVMnZQdHFB?=
 =?utf-8?B?SGpTczdaTlZYb2xjdXRBSXlpWEZ6anNOT0xZcDZIc05KQjNiTUNCN01HbzJB?=
 =?utf-8?B?VU5KVmY1S0s2TnZJaHZ3cEtFZUhPc25VZGd2bk1hNmQ1aFhYY292eTMzYUQ1?=
 =?utf-8?B?d1dhU29qM1hENEJlLytzdWU4UWxQWjZHazJocDZjODRwMlNxbit5bHdmdUNp?=
 =?utf-8?B?bElhR0pqZC9sUjZhK3pQOHd2MnNxcS9yWHlsUWhWWTh6b1FBZHBVSjVLT1Jp?=
 =?utf-8?B?a2RHKzhFVHlwSFMvb1I4ODN5S0pYbExpcFQxRXM3UklSQ1pZTGRvbTFBUStS?=
 =?utf-8?B?cHFQeEgxSWlWUG9rNVZEVUd2dTJJMkg5ZW5qbjZtQ0M1cldONWxHOHBmSmtt?=
 =?utf-8?B?TTNWaEY1eCtWVzd0Njlic0VCay9RcWxtaFJWUTZqREdqWWFRRnFqRXU0cVJR?=
 =?utf-8?B?NHBGTXRyZVJvWUR1OFZ2WjdDUjJDVytCVHBMN2NKYTlUSjNxU2RuWjA4Yng3?=
 =?utf-8?B?QmhPSDk0Q0R6MnNvMnQra21GK3BTcEVuenRMYVgreklBaFIyVXlSRkxIRmVZ?=
 =?utf-8?B?ZmpGYmc5TGkwRjVTS04zL1ptTjhBPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfda1d5d-68a3-43b1-6380-08d9f97bb981
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2022 23:00:04.0694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HcczFeDn/5caNcbo5g96YrTQgiXybFqSfoV9F7Kimqb8UybT1GBOoiW9Xp/DyTfR9IPnVgJJqoVOw8zXcr/PDcSDFKI5qoElpnDSXlSyNic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5750
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10270 signatures=684655
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202260163
X-Proofpoint-GUID: UIMzvDhPgAf6XmvM-jFjmk50IszIShCL
X-Proofpoint-ORIG-GUID: UIMzvDhPgAf6XmvM-jFjmk50IszIShCL
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=nTc3amfL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=tVbmC8K4;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 2/15/22 8:19 PM, michael.christie@oracle.com wrote:
> On 2/15/22 7:28 PM, Zhengyuan Liu wrote:
>> On Wed, Feb 16, 2022 at 12:31 AM Mike Christie
>> <michael.christie@oracle.com> wrote:
>>>
>>> On 2/15/22 9:49 AM, Zhengyuan Liu wrote:
>>>> Hi, all
>>>>
>>>> We have an online server which uses multipath + iscsi to attach storage
>>>> from Storage Server. There are two NICs on the server and for each it
>>>> carries about 20 iscsi sessions and for each session it includes about 50
>>>>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
>>>>  on the server). The problem is: once a NIC gets faulted, it will take too long
>>>> (nearly 80s) for multipath to switch to another good NIC link, because it
>>>> needs to block all iscsi devices over that faulted NIC firstly. The callstack is
>>>>  shown below:
>>>>
>>>>     void iscsi_block_session(struct iscsi_cls_session *session)
>>>>     {
>>>>         queue_work(iscsi_eh_timer_workq, &session->block_work);
>>>>     }
>>>>
>>>>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
>>>>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
>>>>  blk_mq_quiesce_queue()>synchronize_rcu()
>>>>
>>>> For all sessions and all devices, it was processed sequentially, and we have
>>>> traced that for each synchronize_rcu() call it takes about 80ms, so
>>>> the total cost
>>>> is about 80s (80ms * 20 * 50). It's so long that the application can't
>>>> tolerate and
>>>> may interrupt service.
>>>>
>>>> So my question is that can we optimize the procedure to reduce the time cost on
>>>> blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
>>>> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
>>>
>>> We need a patch, so the unblock call waits/cancels/flushes the block call or
>>> they could be running in parallel.
>>>
>>> I'll send a patchset later today so you can test it.
>>
>> I'm glad to test once you push the patchset.
>>
>> Thank you, Mike.
> 
> I forgot I did this recently :)
> 
> commit 7ce9fc5ecde0d8bd64c29baee6c5e3ce7074ec9a
> Author: Mike Christie <michael.christie@oracle.com>
> Date:   Tue May 25 13:18:09 2021 -0500
> 
>     scsi: iscsi: Flush block work before unblock
>     
>     We set the max_active iSCSI EH works to 1, so all work is going to execute
>     in order by default. However, userspace can now override this in sysfs. If
>     max_active > 1, we can end up with the block_work on CPU1 and
>     iscsi_unblock_session running the unblock_work on CPU2 and the session and
>     target/device state will end up out of sync with each other.
>     
>     This adds a flush of the block_work in iscsi_unblock_session.
> 
> 
> It was merged in 5.14.

Hey, I found one more bug when max_active > 1. While fixing it I decided to just
fix this so we can do the sessions recoveries in parallel and the user doesn't have
to worry about setting max_active.

I'll send a patchset and cc you.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ec8d0b97-e94a-21e1-acdb-e90a7df39b72%40oracle.com.
