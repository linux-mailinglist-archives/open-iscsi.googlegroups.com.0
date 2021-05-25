Return-Path: <open-iscsi+bncBAABBTO54OCQMGQEA2EUK7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9396039A3DF
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Jun 2021 17:01:35 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id a22-20020a0568301016b02902a60679231fsf3363517otp.6
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Jun 2021 08:01:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1622732494; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5L1h4UuKlnGCJdcewAe2/6ZkkGbMXsRy3A4+m9IdU7ESrO2KhpiL8iNeD8U6+5hgv
         bLSBkw6PdqzByuk7vXrPs9wEuQ0xvkVbtGFojjgm7Fj9Dp4wq5Q2ISwJNOCrQ6O7EeNq
         dgVI2MxAZBk4RWmDw27+il6pigcPSBmxEifQWzoN6TGz/j0qP/YSBsZOwWnjEGrruw75
         tqzl++EZYHptyM9HVCSA7VwzaiLn0MCetYK5Yv6junD5sQ4i3SYF0wh2tbzsoIELeHsJ
         PqORcaKwQO5qcZTWkLn40XYBYXYuvw9EfRY7O7la9yqhN4i6qqPxdtlkjev0IYj6d4bT
         RIZA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:sender
         :dkim-signature;
        bh=xKSpfE6Kc5dkvvX7ewy2a4ME3rPabWFo8BHCUVHsvUU=;
        b=EhQq/rSpdW/4uOm5zngQH26KvTpAeIA6UGPCZaLg8D4FiDkKefUgnYs5rFySxdXVHB
         CmHu9eQERqqtKLhwOMRiW/oqjz6aaYIfgUf168ob1a17ORE2iJXC4nmcXhPBFK5xXx8n
         QaRpgSzUQkEw9/oW9jWp8+mXBJ7kYJEsWVNX4l/A8RRwZqHQUTXqkzFWSWxe2GmQI3EW
         M6Pk66EHmmiIMbeXcoSr68I/D8pmGeLOYeJAV1sy1X9qO5sRqMpCwc4Rz5zn73U9JirM
         hPN0BMXC4oW1GBGzF6VDFlDEA3Dj+4zPgdee8yO2fcSYKeBCYWVGieG1j2W+US9Yh3Hv
         fSEA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rj4QWeWL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BPQkcthG;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xKSpfE6Kc5dkvvX7ewy2a4ME3rPabWFo8BHCUVHsvUU=;
        b=FOvGajwfOvnMUA0RUjUMw9Pw4/vYlY5RrGswyEnsykjdx+X3IShktHTdqgCITIriK3
         x4QIEBbNuU1AG3PtA1RQN4n1fpp+zoBDzsCMrA4IlxYAfWWB2QsI/uL1Iet7X+2Af5N0
         9Wb5zDKkWJ9SMqUZuo8ehndphyIxM2mmHRgeGDE/uY4GynxvFk6PjzIK/PVEVQO5b8zi
         TtxpWAK/UDCKkUivFbct2AZqJR8tinDvFFmpTPUH71w5585BRai7tIAxbpjq+r48t5fm
         txKlj6QgwpgO40lFkCsLJOoqAvMPMYiDEFenB/bIaOEjX/asZtiLzI58wVe7k8iLoJK6
         xVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xKSpfE6Kc5dkvvX7ewy2a4ME3rPabWFo8BHCUVHsvUU=;
        b=VT1HfeSeeSBZsYeaL3zx4uWuLQ+rVDcJaXA7RfkFEG858dFbZvvyTV4npRkIVq4lhe
         hO0QOjFXNfdyq/UMt0JOiQmNibYZTBd0chL3neUNHAEpjhFt0o0ZldIFwVCZRNPhQPTA
         EFalROjBLEbPqk6vXf2t6FNBK0LI/jX0raugCyLA00FuluBuV9UzTidcDqoOeZZgPqHi
         4hM+58pdXzdPadb2nBnOooptXojXyDbY/QpNMKzqiuuri5MMpEmxztMdW3eZpqS27Gmf
         IkSyaHmfK/HVTidNzUUCRyfk81gd+SJVrnylw/iEZfme85P+ZCH23wiapI/jIFHsUaZ5
         wBvw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5327Ll2pyWWREhTpTEEHYa+eI2V2ZDQq/BByj+1XtyB3pm2Ivzw6
	fYHtwf6IrJDMz+NM9kWHjoE=
X-Google-Smtp-Source: ABdhPJw+agJRn1WSrKcSR8VF1hfEw0vHAqdi8EK1JP1OY5G0PlUEynNd4Oi821eAu6+E2Wyh4SmBTQ==
X-Received: by 2002:aca:410a:: with SMTP id o10mr161634oia.51.1622732493866;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:5c8d:: with SMTP id a13ls1212030oti.0.gmail; Thu, 03 Jun
 2021 08:01:33 -0700 (PDT)
X-Received: by 2002:a9d:4606:: with SMTP id y6mr678980ote.313.1622732493568;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
Received: by 2002:aca:f00b:0:b029:1f1:f05:638f with SMTP id 5614622812f47-1f10f056a69msb6e;
        Tue, 25 May 2021 13:10:14 -0700 (PDT)
X-Received: by 2002:a17:902:e5c7:b029:f2:8661:6d1f with SMTP id u7-20020a170902e5c7b02900f286616d1fmr32298392plf.8.1621973414421;
        Tue, 25 May 2021 13:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621973414; cv=pass;
        d=google.com; s=arc-20160816;
        b=pW86JFepTYc8jQzu/GdnMin6yYmDymhgNzkOuwWXcx5USHTi71OXMe6yH9m9Ry3n+C
         TFNUD65+XAowKP8IjBMV+aMNbTJfjEK6jlOWdVvtyP+LX6HbLgmKgWkP3SWa8P/1I1uC
         f2Uk+4+6sWsV1PyxohW1lF4I2eNPepOATrvpCl/12GNpe/PrQJIPyw/r0b8/LC5gRtq0
         42V2xc87TUGiIoi8ohIsFtwAYSWm8mfxQpJcYXMibkSAXN9XwXFn8nCzwqwIVvzJCE8Y
         n3+fQsScqXwpAF0Wdt34ooFfepGguv5hm7lWmkjFlpFV2ljNL6qulkG52rYNIiWb0Q9n
         XowQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature:dkim-signature;
        bh=XW5umgBtJ2W5dZvh5yskXDTzQOBIpZO9zRxPlDtPT7A=;
        b=KIVi/CeksmM+EUgiyqCvf2EuWM+BMVdtu4eI/51yHXj5Dz8SHQPA6gfgIqrH9G8E58
         uNLE6XJZ6xpE33UWepkT8pbg6uZcv6pXjBdIq6E5BQuakr+sSsB82uJt3wZFwgzDtcz3
         A2BAdY6Wjqgq5BKrxmHyWsaBqNAIFrE2eu0s3RlErvlrvNO39KogztMYIKuSiAm+rzq6
         NcbAYu8s1rlKZixcyTBSJ7DxYpCm1tzioZ/ngRm8DQbi6DFXwlCb3gRF71qVrX7zwPGR
         h7QwWgcPKBFjkCu2yM/F253XKFT4Jll14cFTvhtJJy0XrwJE4OfUT/PwT2GFLk8X5ppk
         dKQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rj4QWeWL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=BPQkcthG;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id k5si1972617pjp.2.2021.05.25.13.10.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 13:10:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of anjali.k.kulkarni@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14PK4qvO056260
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 20:10:13 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 38pqfcf7c8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 20:10:12 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14PKA4vM134044
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 20:10:12 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2040.outbound.protection.outlook.com [104.47.57.40])
	by aserp3030.oracle.com with ESMTP id 38pr0c3cb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Tue, 25 May 2021 20:10:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogFTWbjLifl6uQcMxtcz8Dye+lwm0YFOFdpfkF9o1MQu6ykRpkDCUVa6zHS71Vd18RwMtgTNeZ2U64v9K719b8louNO7Xt3j183XieBZzC88UUl5p1mQiCAerrLkJ/apzFvhKU5EqndCX9ncBLXHnTH9Bv5X/PN0WXuL7abYcpazVJoo+3Z3wKkQPzAJk1OuIGvowyZxKAw1RVdp1uW6Rm6R17OkPIN5NNOonYLb9aUw+iHSEmMQN+JEwdUjQhGpZJWMjk/+YkD1Ep8sA9uNQ5SbpZbOIsosOhArLG3VrE/wYzicVnZy9QbKYZsvAdD8HeyoxiOK1HqQp1uVYGMLIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XW5umgBtJ2W5dZvh5yskXDTzQOBIpZO9zRxPlDtPT7A=;
 b=JKN7dAVmc9I/wqEEzpM+/eE39+79vWpjUJnjXbNjkTm+B+prwteNICP/lFZFgeyk3G+omzR0BC1Auj9fDWYxuFQ/n6+pJ9KOHYT3bb22eeRomyRrTtyh24ovgbCWpVUbo3HAU9ykeMXXwTAkfp4k7fQXPHXxNaaThAaj4tIBSlt9pyfmawcqNVGzv9UEHWdotpD29kkhoqwmtPDJEs++ypsu5cUeb1SIvtgFRcF8DSA5spRjk3ilp8CCpqyTx4Nb8PfzpokMylH926jgf5KxDGifIt5L5E4gp5+ivsx75tNj9aIap7eMZMI3Pc02LhpNGBsEQTN5cTVgIhh//aTSZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM6PR10MB3850.namprd10.prod.outlook.com (2603:10b6:5:1d1::28)
 by DM5PR10MB1291.namprd10.prod.outlook.com (2603:10b6:3:a::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4150.26; Tue, 25 May 2021 20:10:11 +0000
Received: from DM6PR10MB3850.namprd10.prod.outlook.com
 ([fe80::95fc:d3b0:eb5c:6f5d]) by DM6PR10MB3850.namprd10.prod.outlook.com
 ([fe80::95fc:d3b0:eb5c:6f5d%3]) with mapi id 15.20.4150.027; Tue, 25 May 2021
 20:10:11 +0000
From: Anjali Kulkarni <anjali.k.kulkarni@oracle.com>
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>
Subject: Re: Submitting a change
Thread-Topic: Submitting a change
Thread-Index: AQHXUZvVoJiBY6puzU22V3vtdPYO9ar0oLUA
Date: Tue, 25 May 2021 20:10:11 +0000
Message-ID: <3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77@oracle.com>
References: <06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0@oracle.com>
In-Reply-To: <06EC4AC0-4E03-4D2D-A23C-FDE7377BA3A0@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2601:647:5680:47d0:95b9:1f30:855f:f48c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ded577a-681a-4a31-f180-08d91fb919cf
x-ms-traffictypediagnostic: DM5PR10MB1291:
x-microsoft-antispam-prvs: <DM5PR10MB1291FE58827A3EE65F7BFFF2C4259@DM5PR10MB1291.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +53oqh0EH2WE2CSA5tmCAQlXHQHsqq+FACZH3pTiXi+ye65KobW3WncSO1zqCy2gFh/j1ih6XuqXhPxPuY5sUZNp9WbAq3N9EwpaOAy2AdveFf5rgBNq5AadFN3MSvf3ISI3adXVby/5sy4iA5/OILb0xnNoFo1cvsQtRcGdf3FJO82Ux6CJ0B42tBoWzT80wmzUHrEVIOxAU0aHs76A/9x0sRlpLh+gYUog/0HvjKOGL/OvAAg5tjZCB0HQstO4cjfSrwwnVe49/RbTO3wQk+mL65Th1gMLivGyGy4/kkNVHqqywGL3mohxtjtkCFxix3lImdysSLh/qXerripqGfET8XOj5KsjtZf7kKlskMnVteeEby9YyCTM6G4ClWlgQGFd4ko5RQ/oEBjr/sG1eElyjXJKyFLEejsbKV1sZhu51d1FGVghDtqXKmjJFHnwUCmuvzkMeaOS7/G+QdGk9yKYkqMyZLKMnXYZkEdhM/m+7HhmT/wPo3bbJw/S8N56FlvTWKQyv5TAb3Alfs21kz842ff2l54Cg1XN8cCAo2VGhWI8Q0VZBEhwNZMC2r+j1+0Lhm0DM2gil/JR9Bu0hm+dnnpXnl6B6CSp34FlkHdEA81pIe36kyGkLl8bGrCXsIzBYQzRmYr0wF9rfM61k8Qk5WlH9HFrJZVCHDqnFaXlY4nFWFfc+WjVyLB/wXDmhAy9IqSGalfhlEX6vPCwi7E8Q65r9/gx6vVF+cgI1slh4++lfJJkMXpxVP3lW+YlSfyOFglOsZxt+AgQo3UEwA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR10MB3850.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(376002)(366004)(39860400002)(346002)(166002)(316002)(86362001)(8936002)(76116006)(66556008)(478600001)(186003)(2906002)(66446008)(8676002)(4744005)(2616005)(6486002)(6916009)(6506007)(7116003)(64756008)(33656002)(6512007)(66946007)(36756003)(3480700007)(966005)(53546011)(38100700002)(71200400001)(66476007)(122000001)(5660300002)(91956017)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?4hhUTEcWhN0pLdIYLWfKUXx5mxKz8s3Aguhd+tqtO6Myj7fdE7mEVCP+iEnG?=
 =?us-ascii?Q?LsqFzdg8yiR9q8NDJAFiUKiEZaUeJlq6LxQVebRm4hL6fWsvetEloy+Qd1Z5?=
 =?us-ascii?Q?DHsSzeNfzQvMg1bvW/4LWoulAUZuZcP+EiWjAEv6CJrxRttrObuIGWucgmAk?=
 =?us-ascii?Q?DQwoFrbq/3k2wS3xcrLsl0x0Er/uPUf/ktdTKJrvNHDLVw8pFzaVS7YG+6Or?=
 =?us-ascii?Q?N+NFTtfMKEZxoKuVz6SFB04K4/531Tb6A1Fdi8573EWKCRuefVbujL96xKkl?=
 =?us-ascii?Q?Xh795TD1PaNr5h2u4JcT5W5YkeOXc/ZNNJPfG+OHbCpbzqd1pXagG0jwI7fa?=
 =?us-ascii?Q?/ibcrrVSc7R38Z95FoEh5n23IusySnWONuP4aRPQMWeekj9h5FGGatc8V/cX?=
 =?us-ascii?Q?6GLzvG+fgH/WjZ6CkeFUqq2B41jHi5tB5ybp7O2E4HW1qwZS6KNPVcITJxJu?=
 =?us-ascii?Q?yNY1srATynckzKxTj7tFombw6t27jqw2uL3aTBLqSARL/ryYHAfjd1MYDABs?=
 =?us-ascii?Q?mrbVwhMsoJYUoUMBc8mCddwzzqnyxJhOdS/Yeqzz98lOKaxOdqJnY8qvm4PB?=
 =?us-ascii?Q?utdrCyLjXqj4s2BUrIcSaVcA+nxXPil09jhOx8HQhYubtie+NWdhpcRFv2RW?=
 =?us-ascii?Q?uuQDXQ304KV8lXmjSqAzRakLHkQhkxekROLzFwdEnuKUnR7x/zgoUUqqVqqw?=
 =?us-ascii?Q?kVPyvgBfg7CTksGH+G2BOODv+q37WGuHnVhBJhQj8C30kqWwdfuOIn4KD+dj?=
 =?us-ascii?Q?fcuILb9gg1Z1zYC16+CbYD0n0QGao9Ve7CLd63kSGFgdyOgqPuWrnHipHdVr?=
 =?us-ascii?Q?Q1a3wHkFLiq2aJ/9yxTr7/CvqArkdCZ/nlLr3IDP1C07qUhElI7PD/28ohJu?=
 =?us-ascii?Q?BVlHE0xyxCawG7OleDhvHro0DRi2SFhcJuQCoA7Ju6gScj0dN6NZI8M2KgmM?=
 =?us-ascii?Q?Fp2zB/QHf2r7NSxh/cI4c1ky6x4nKr9lwkfdtKournPiNk9cLWIh3NQ4HTFx?=
 =?us-ascii?Q?OoCEmkQ9uLgB4+zJxEs+2DESJF1AGo1mnuObQmPF0aTxxQQRYkAM1LbdKW06?=
 =?us-ascii?Q?x03KKtOxkg2zAhn5koVOK1cVliYTF6f8O0OsIV21lm6DWb6MZSuViHist+5E?=
 =?us-ascii?Q?CZIZKh8s57TEyFLXW+/0w3EnAvISmL/pojl9eTp3yABqSRYNgi2mm9b/3af1?=
 =?us-ascii?Q?8pXCQXPXvNojRjFKbwXpcVAlfsSfWubRjz3szvcKsTupTYGGpr5HqJAC2byU?=
 =?us-ascii?Q?WLCdALwL1YlJp3BWaogTqJPFNbmdBRSJT4vQv9BdPLTlCeNbtjBXMPrHmt+a?=
 =?us-ascii?Q?T9DSPWzwZAX1aAq8ZSB2nsKSaVpd/8J3mdxJ2uqPFrRRaC9p5+BTQlLjJJ4F?=
 =?us-ascii?Q?BgZSurZxE1s971ZqYaWVGKFQxMWx?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_3AF813416AC04FF7955E7ACCBC8A1E77oraclecom_"
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR10MB3850.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ded577a-681a-4a31-f180-08d91fb919cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2021 20:10:11.1475
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fRCC/8C0+ObNCPO8AYiLEV1cmLh0ZCCq0fMM52aiG4CJl+I8Cy13D4AMOjbY8/Ew7M094hYiI+y/XW0E5qtwMsHqRpKAI2GNSFl6dSfvFQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR10MB1291
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9995 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 mlxlogscore=829 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105250124
X-Proofpoint-ORIG-GUID: nZrr09LipB_dj40yszEigT02ix905RCe
X-Proofpoint-GUID: nZrr09LipB_dj40yszEigT02ix905RCe
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9995 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=953 lowpriorityscore=0 impostorscore=0
 adultscore=0 phishscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105250123
X-Original-Sender: anjali.k.kulkarni@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=rj4QWeWL;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=BPQkcthG;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of anjali.k.kulkarni@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=anjali.k.kulkarni@oracle.com;
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

--_000_3AF813416AC04FF7955E7ACCBC8A1E77oraclecom_
Content-Type: text/plain; charset="UTF-8"

*fall. -> foll.
*Gothic -> GitHub

On May 25, 2021, at 12:26 PM, Anjali Kulkarni <Anjali.K.Kulkarni@oracle.com<mailto:Anjali.K.Kulkarni@oracle.com>> wrote:

Hi,
I am interested in submitting a change upstream for open-iscsi. How can I go about doing this?
Also, is the iscsi utils on the fall. Gothic location, used on redhat as well?
https://github.com/open-iscsi/open-iscsi

Thanks
Anjali

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77%40oracle.com.

--_000_3AF813416AC04FF7955E7ACCBC8A1E77oraclecom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <E68BB08155F94F49B52D86791219B0D2@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
<span style=3D"font-size: 14px;" class=3D"">*fall. -&gt; foll.</span>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">*Gothic -&gt; G=
itHub<br class=3D"">
</span>
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On May 25, 2021, at 12:26 PM, Anjali Kulkarni &lt;<a href=
=3D"mailto:Anjali.K.Kulkarni@oracle.com" class=3D"">Anjali.K.Kulkarni@oracl=
e.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break: =
after-white-space;" class=3D"">
<span style=3D"font-size: 14px;" class=3D"">Hi,</span>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">I am interested=
 in submitting a change upstream for open-iscsi. How can I go about doing t=
his?&nbsp;</span></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Also, is the is=
csi utils on the fall. Gothic location, used on redhat as well?</span></div=
>
<div class=3D""><a href=3D"https://github.com/open-iscsi/open-iscsi" style=
=3D"font-size: 14px;" class=3D"">https://github.com/open-iscsi/open-iscsi</=
a></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D""><br class=3D"">
</span></div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Thanks</span></=
div>
<div class=3D""><span style=3D"font-size: 14px;" class=3D"">Anjali</span></=
div>
</div>
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77%40oracle.com?utm=
_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open=
-iscsi/3AF81341-6AC0-4FF7-955E-7ACCBC8A1E77%40oracle.com</a>.<br />

--_000_3AF813416AC04FF7955E7ACCBC8A1E77oraclecom_--
