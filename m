Return-Path: <open-iscsi+bncBAABBY5C4WSQMGQEWQX24JQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3a.google.com (mail-oa1-x3a.google.com [IPv6:2001:4860:4864:20::3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E59575B262
	for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 17:23:18 +0200 (CEST)
Received: by mail-oa1-x3a.google.com with SMTP id 586e51a60fabf-1a9e48f8e71sf3133019fac.1
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Jul 2023 08:23:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1689866597; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+hmmIiEGBhoPPGCdcTQUP7T/O0cLRnx3HH+qNLaZUYtfeMkUbFJPy5i4ZdGJ1mjoN
         DvdtwHMuNiAJEM4yn4wiQ8VRosTSESfxaFrGsqyOCXqVj2CW8KFnF2oNFMLipeiVeAcG
         rn/SmrsIYLI4NcVw1C8l9dpR+Rbua0amHoZPacjHTnHj6rdisJQbSUDRNal/UAQi5n12
         S/2ybsYOSkBuW3LO4DAGvPNKH0jVf6QqJyeCMWasQ8E64E5FXQlkwlv4jB9g/Wr0CZLI
         ThYuADs2Vi9/fJBwLp3Hr9n1NgUj5OaTkxmaELpqbAxonAKCFFd4LzidN8aybglWAL8S
         Eyuw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=d9dQOWvunfWLsEvZHjY1cH6AC1XFH8U5vjjT/192ZjA=;
        fh=Hzv6aARxW+xYVZGDfJoV9w0kw9xbt+Cd8qJ12j6+5Es=;
        b=izzhsX/2qZMn0kyVqgZ4sDukbiRb/a4TzxDWN5h8Yevot0hUh30GQQnnXWi8F+93oI
         hSPSsSwO7+V64PCz6kIaQED4i7m2EU+ltj91i3TEuW0q7oIfoTy5IVRa7U2DzcgUS6Nx
         hgqskrcJR9ZMiW1n4bixSI+qJp6+DMfkFsyuiCu9N61t2hstwwJUVkTG2ivixsZOU3hd
         Odvhwub0GJa4dnt4Dh+yATdDXQCMeWmVuucNhvHRnIQpOEyMm2YDG0GQBIkqcGhkaIQ5
         EuYbaQ7x8VZM/zLM246EDj4McxK0XMdlV/ZgNRyxDOZRkN9iC06a5Q9PHY5ApfiSsUFP
         7ipg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=i7uLYsuI;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feab::722 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d9dQOWvunfWLsEvZHjY1cH6AC1XFH8U5vjjT/192ZjA=;
        b=rBHYZd8cKgX7i+oRcHVKqt7SiyGYxM7zHibc2i2Wz8Elr5M8SF94dCDDc9dnUvjjma
         1Kh6LVprj9j0gNQUbXMC6bbul6rSPKhut0WK94f3cqLe+PWFxfwja/7LbnuxLgyvMDWm
         JQz1CKAxdCinBzsa0m7yZU7nIHpZkAoqq+fuQLzxwSedXzVrWCd+cMmAG79LCK0b3Q2s
         B5dCFQij+tI3zzFWSBdgsv3VLR4E6JwKneenekB0yNqK+qtRBHw6NiaatZa4A1cDfHMW
         RHvg0YMzAlP9HSyGCeeQZ/kLiYZFZGWS2ZPgNM0yKkmoQj0Qiv2uh1aRaWj9Y2FDq/Mk
         3LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689866597; x=1690471397;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d9dQOWvunfWLsEvZHjY1cH6AC1XFH8U5vjjT/192ZjA=;
        b=i9C59LKxs0pviKM9iYad388MvmuIggoOiFhaukjsp22JVfD0vY8KevlZxViW5Pf2Kp
         OFRTBJi3s2lnfazlW3NB3w5SVOHkL0uKk/pv1PJsx1mVyswEGFtaHXoGcsGFodWg1b1b
         S6Ixn2DT9339W5pu1mDk+nZgPRN/b30VBkIIhYa6Lj8vDnkk5kXqyAKpGwrz4yOg8z0N
         AjAhA+N2z3iXE+TKpmn6mqy+nXD9KX1EXofN+C98CQCb1nHqHRighjqbpjvhEr9POmDn
         tIXqL01XYM4/rzcjKJ+z7uGNwwRTWvV/mfFd9vEuuVMSB1bt92cXZMu8zn0feOlEWo8y
         pmRg==
X-Gm-Message-State: ABy/qLajP/vpTuWlXCh9ibvMK7gUbwDGLeNHCS4AUwjqGwC6Uv2lj4co
	pBXBJgRgY0sICW2iiEEMWG8=
X-Google-Smtp-Source: APBJJlH0P/ELcEBYBqHXys3zFJbN672rtk/oTk38RXs2YRaljR0GEfHy3fyDOD8V+sKHJP+/bsiOEw==
X-Received: by 2002:a05:6870:6120:b0:19a:2d23:4e32 with SMTP id s32-20020a056870612000b0019a2d234e32mr1423050oae.28.1689866597026;
        Thu, 20 Jul 2023 08:23:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:eca8:b0:1ba:d90a:7d69 with SMTP id
 eo40-20020a056870eca800b001bad90a7d69ls255334oab.0.-pod-prod-01-us; Thu, 20
 Jul 2023 08:23:15 -0700 (PDT)
X-Received: by 2002:a9d:7544:0:b0:6b9:92c9:11fe with SMTP id b4-20020a9d7544000000b006b992c911femr3730351otl.3.1689866595584;
        Thu, 20 Jul 2023 08:23:15 -0700 (PDT)
Received: by 2002:a05:620a:3708:b0:767:85a7:5f7c with SMTP id af79cd13be357-76838fad7ebms85a;
        Tue, 18 Jul 2023 19:28:26 -0700 (PDT)
X-Received: by 2002:a05:6122:985:b0:481:5218:ad27 with SMTP id g5-20020a056122098500b004815218ad27mr280449vkd.3.1689733706209;
        Tue, 18 Jul 2023 19:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689733706; cv=pass;
        d=google.com; s=arc-20160816;
        b=jbIfjypWZ6oTef3+BvUt1RdclNB7gk9ZEDZC0E0zQBXgYY3XFtgS/8jFGGiwzqSvIX
         cKtKjMkTDSheHN0OHeAGiNkDVnWi6bVxy2OJ6g353X/ASMmehFOcg6vtI9UKSTNS7W5m
         sCktPOtF+uSTpKGD0BG0vepYUv9RlbZZy36FKNW0M5ts8fp3yujHWiYTqZMAY+wRWWOA
         mDhXumCbU5dlqO8AEbWgEosPTl92lKdk9hKz5fgR5zdN2E78qivraa0gLBqPKVge+0w4
         mB1/G8IpEzxELBiS66SVj5ytb9Zlw+3IjGszgx73x6i7Mi2zcDue9lS8hxDcZRP4T00b
         fwKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=cdhme0B9gvf6ueSJNhnfDbWMzWqjipW9F8eWdwWCw4w=;
        fh=nXnujiTWbwFxhZgfQUlNNI/xG2YRTHEO8KV76FvEUaE=;
        b=uEtXeRt7Yrvg8cxfPSKeTmiFNKCMDE+UoCG2K5nzhY0HRFDSHv9iq7i4VvYRHn6CUe
         NI1H0kV33B6DXO1uwJBX2iRbCa9v1R8MaMv00SaIk/ROMSUD9szWdd8g2tYYKXJm0iNO
         ZVexN3JwTT5enbZLJE8Gb5XogWQkISksoSBbnoGIrgSQcfZeiIGKjpw3JV0WDy347TJj
         iqxJVUpwlmrb3/ej3rnpTwv4hYM6FA+bv0PcV6rdzQlskKI+IBrJKcgV3y3baNv2FqdL
         pp+pPYiKJmnBE0Y6CV0N4dEgAWL2iog6KFxrSj3AIneecd74qRDdMH4Oe7gn7qosBxYM
         BtXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vivo.com header.s=selector2 header.b=i7uLYsuI;
       arc=pass (i=1 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass fromdomain=vivo.com);
       spf=pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feab::722 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on20722.outbound.protection.outlook.com. [2a01:111:f400:feab::722])
        by gmr-mx.google.com with ESMTPS id 7-20020a056122070700b0048166dfadcfsi175672vki.3.2023.07.18.19.28.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jul 2023 19:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of duminjie@vivo.com designates 2a01:111:f400:feab::722 as permitted sender) client-ip=2a01:111:f400:feab::722;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WtnT32PYmv/NPORoXNbOoE88svl0M5451XYIA097t5au1Tzz5AzthE4t1HWhLba/l24T9ljWtxQLextwO505sh4ORB4bL1yaZUlfv0bZjgHQacIbEXG5sE6ySv28CyaRrgYX6I/AtuJURfMn2wro7ybZ+AVLceaT+G9o/t7iKXmo4p0ycm/3irY+n2Z0b9HJuBQtg1wI8gscBi/Lcm5xbyeffNXa9QIsIDDyhuoK+2zAR5KgZeTDNUwX9UlxbIGt4j/2cSOTR07VS9pybusz9rJ4MborAylCTsM5z57QIWGLdskUn/abTTNIybaoyD4akgXeO6Pv0N2EBBS+xovGhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdhme0B9gvf6ueSJNhnfDbWMzWqjipW9F8eWdwWCw4w=;
 b=AiETAUsTdfLNJ+sH2q61mW63TTlPnwObma/aVfeoh2mlEHNLnTZyXH146p52zrhjqnkBhQ3NdXacrKHKE2OyMj73s84IfS7ZEcFQY+cvLvF98PtJmzEcI4HBsnDuuNzzexWY9GB7yly0CLwf6XbGWJw7xz49OFAhvPxYRdPcGs1KLd9/TVaIRyI9Kil2Tivc7/lqGK6oMEa6Yk/lRF5njagGmtSpFgl0IEU/nlYo1gQhkMEaZ/q5+9oY+f0V5Zjvwk8L4B9Gy4qLJMfE+m6pDZa4v5eaNVNaY45JoeM8thn/9JGjMCQKWEHd0mjBPbHGX02PkCekeju2pq2XvCT2tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com (2603:1096:4:1dc::9) by
 TY0PR06MB5306.apcprd06.prod.outlook.com (2603:1096:400:211::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 02:28:21 +0000
Received: from SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::75ed:803d:aa0a:703f]) by SG2PR06MB5288.apcprd06.prod.outlook.com
 ([fe80::75ed:803d:aa0a:703f%7]) with mapi id 15.20.6609.022; Wed, 19 Jul 2023
 02:28:21 +0000
From: =?UTF-8?B?J+adnOaVj+adsCcgdmlhIG9wZW4taXNjc2k=?= <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E.J. Bottomley"
	<jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
	"open list:ISCSI" <open-iscsi@googlegroups.com>, "open list:ISCSI"
	<linux-scsi@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
CC: opensource.kernel <opensource.kernel@vivo.com>
Subject: =?utf-8?B?5Zue5aSNOiBbUEFUQ0ggdjFdIHNjc2k6IGlzY3NpOiB1c2Uga2ZyZWVfc2Vu?=
 =?utf-8?B?c2l0aXZlKCkgaW4gaXNjc2lfc2Vzc2lvbl9mcmVlKCk=?=
Thread-Topic: [PATCH v1] scsi: iscsi: use kfree_sensitive() in
 iscsi_session_free()
Thread-Index: AQHZuJDZSQaDkz9/gUOY8RX0Rg5uWq++RwkAgAIY3DA=
Date: Wed, 19 Jul 2023 02:28:21 +0000
Message-ID: <SG2PR06MB5288D9E4D3124B5577ACA035AE39A@SG2PR06MB5288.apcprd06.prod.outlook.com>
References: <20230717092657.9776-1-duminjie@vivo.com>
 <5bed6236-0db7-37fd-3d0a-4f51874f9c53@oracle.com>
In-Reply-To: <5bed6236-0db7-37fd-3d0a-4f51874f9c53@oracle.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR06MB5288:EE_|TY0PR06MB5306:EE_
x-ms-office365-filtering-correlation-id: 6e6b6709-6a4c-4cfd-672d-08db87ffd215
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +7laDCCG2vOoPZ6UCjR21QiQYNxTwPBf9qt449QYmJozxCwV+1qdJKJWRNcPhNtHWxyb2wFawitmY++vdYO4iLo5tW0ZWottpQt5bVkefToKVwvckdzf+oC6UgZECM0XdxDHlkCcdQxJUa1xAgPHjDmDZAUJQMdHGOHn5z19izDxi+RByP0zySJm0UIbrRdiSbuOmm/rgZPzZ5M3t1bwqEG5Xf1r/ww0AHc8mDUx1swTQu9taKqlKU6jFVUOsky74d9bcef1dN1sOxlDUh93Krww9Kjvd96dnZvt6d6HpXcJitan7jOv72jsreJr+FozyYVFntCVyUiPlyq73LdB/oHCbxVZzLHNXOPyOFKcOYwIRQAjNJ2Z2MfqTOwyaZ61rIcJV0NJxt2Mhtp00YZNtl29ifOxibCHGpG7xrh3Z9uPk7lRVQyQKxSPEreobsCQ48VFsiZbgpYsmDeu3i4tHAz1wAl0SF1xksSBXay3kwsA9fp76W9l3X2X272BIpKIJ9zXaIYU7C0XrTHRPbP3PoSoykIOEi6ZYHkZvKUqduT2UJi4V6Chy1hOtG2axvvq9uzuTbrlf3fN40DjW8D/dWWWY6jNw/pbrgR/u9FSxb+tiGTiM2GxRKwokAitgvQh
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SG2PR06MB5288.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199021)(110136005)(2906002)(478600001)(7696005)(71200400001)(224303003)(85182001)(4326008)(316002)(66556008)(66476007)(64756008)(41300700001)(66446008)(66946007)(8936002)(76116006)(83380400001)(55016003)(38100700002)(122000001)(9686003)(52536014)(33656002)(53546011)(38070700005)(86362001)(107886003)(186003)(6506007)(26005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qk1DVDN4RXFTZ1dwNkEwcTNjMFZNTU4rNkFFM1RRdzE0b2hKSHNVSmJpNitQ?=
 =?utf-8?B?dFA0bXNyTkpub2VXMUxCTitreUhvUmM4SVp4dS9PdlVXUE0zL3pRZjFPVzJ5?=
 =?utf-8?B?NzZoTi9kaTZ1WXpCZDBDQ0hMSGY3UFBSSHdScFBJbGNsR1FUdWp1YlV0TEs1?=
 =?utf-8?B?VDlhMlJsRkpKSENsRlMrM1pmNURCeEJ1ZU9SUmd2djVnejg1QWdLdXpDcmNS?=
 =?utf-8?B?RzFrNnNvV1FBOHBQeW4vTEN3ZTBBY2JESGFDL3BiVU5YY2hOc3JPT0U3VkJ4?=
 =?utf-8?B?ZExSazJyWDRzdDdmK1VuejJ5SHQ3Sk1nZVZiNyt6M3Z6V0pqZmZHTU1IUHZH?=
 =?utf-8?B?UUpBTS90UWtBTFh5aXBaamJsczFtSzNzMWY0NmdHeGxIeVBoMUtPaU5uaEpx?=
 =?utf-8?B?SW96VEMySVFZUCtiOGVVN25tRm5iMW9vQnhSUGZQQmJsamFQQk5VSng0SHZE?=
 =?utf-8?B?YmVaSDg0NmhDY3JDdlVjbUE4NTJsaDhRMnRrNXZzZUluakxXNFlJMzJUbnpj?=
 =?utf-8?B?RUNDT0dLaXg2NXA4b1V6by91RjBWdHpwa3g1N09MSW8zSEFxTW9ObDg1cnVa?=
 =?utf-8?B?S0wyOWhOUk9kaG43VzRCRVoyOGZXZVdheEpoQnAzTlQ4NDJqNk9UaGU3b2tp?=
 =?utf-8?B?ZVpWTHVjRGh1Vks5UGRPY2pTMkVpaWpZR29Oc1RRRGF3ZnRWU3FqK255cU8w?=
 =?utf-8?B?RFpiekhzVFNzMWIzd00rMGJMbGtOc3VqNUhWaG1YcTJvMFZINy85eDlXOHRR?=
 =?utf-8?B?a3FxNmt0Y056SHFSRnhOam45MVJiUXhqU1dMd21kd0JzWDBoQ0UybldhMEw3?=
 =?utf-8?B?UFk5MkdtRnJZVmJrVEpFTm5kVzRNV2w3Zk1YandFLzkrakJjR2pDZi9TZlB0?=
 =?utf-8?B?WUlqWFhEUS9ETTRRd1hCaWh4Q0EzR05nWFJ2MmRpQTVpM1ZQWC9IcXlJSzJu?=
 =?utf-8?B?SUo3MGQ2eEZXU0pqWU81RXRuZUhGM1VNZXZqdkVzTjFEaWFPK3JYcWpISEF0?=
 =?utf-8?B?ZDY3Qm91ZTd1eVNOc3J5UXc4OERYV3hhcFkrMkxOSzFqTFlYcVVPcUd0Mkda?=
 =?utf-8?B?MzVmb1czL2hBK21KaGRmR3ZMekZxRkdzRUJZUjRML0M4M3dmRnN6MU5lRlRO?=
 =?utf-8?B?Tm1OOGs3Nm9qRWpseWRIK0JDTkdxeVRzZGxSeHV6bmdBbHk2ZVNWYXZkOG8r?=
 =?utf-8?B?b0tKNkMrSVNaTmt0T0t4dWFPcitjYW54M0lXUkNqRDd5N2RxR2svOVBKRGV2?=
 =?utf-8?B?cWZobHhzVUdsdk9qU2x3ZHdmR0VCVWpzTlJrb25MUGoyVFVqZjlveGJveWdw?=
 =?utf-8?B?eEE2Q0FVVkdSYm4rVkcrMWorRVpueHpQbFBjalZ5YXo2TXF1a0pmdmllS2Qy?=
 =?utf-8?B?ZE5sNEpVdE0vcFB6VFFOZzZiWFY1VlBkdTNJQkNMWllxTUhWS1VMZEk5Zmcy?=
 =?utf-8?B?MVR2RFY0bERyNjI1RUtJMUt6T1FWOVpKNEFPZzFjTVJGVWtFT2tId25UNUd4?=
 =?utf-8?B?YS9ZRzE0WTVmL3FzRHV1NEtZN3JZdnJMT3FRSE9YQ09vdjhBMEpjYnFTNGsr?=
 =?utf-8?B?ekhTVllyQlZ1N3l4UmRmZ0lBUjIyV1RwclZ3akRFYnJYdy9FVVdYUitsUFVV?=
 =?utf-8?B?dkhvMjUzUmxCdE8xTFM1anZJZWVqaHNUU2hiVWdqSTl3Q2VyNUlGcVFaRmd6?=
 =?utf-8?B?ZitZcXRoVWNkM09nalZKK3dhdGtzYnk0QjQ0NUc3WUUxVmZhSFFMdzExR2My?=
 =?utf-8?B?MmM1ZHE1SzRRV1Q4NWRtRFNLRHoxL2ZNVUcyb0hWcEgwRHhndi9ZdXllM2Nw?=
 =?utf-8?B?VE8ydkdudGpqL3o3Yy9UTXhjQVRXNHkvNzdHSGQxSW4rbDE2KzRabDRqdFJw?=
 =?utf-8?B?Z3ExTFRadU1iMlFFamMvNFZXUjljZGpVT1JpR21xZk92dXM1anNYYzdaNDBo?=
 =?utf-8?B?UDhQUzZZNWJ2REdJMUlwcUtkUjNXMTc5dmUrR1A0ZHE4UUhxUmpVVXZXWXdB?=
 =?utf-8?B?UW5hUXYvVVN2UUJUSklRSCtpM3M2S1J6Kzk0V2x4T0NKLzZjVk9UMlk2T1Rw?=
 =?utf-8?B?TVV6eWoyWGpjdjBiajR4R2hLVHFVY2NZcGg0MXdxc0NGOFRvY0dXRnZOaVlY?=
 =?utf-8?Q?tBhQ=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB5288.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e6b6709-6a4c-4cfd-672d-08db87ffd215
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 02:28:21.3517
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ueIqeyj6mTmWBN1PsGg5FUCFHQ4w4mayV6qCPa0hC4RtIxbMEy/QoXCFrNLl2gstoRDM2sJqIRFnnXhCfP752Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5306
X-Original-Sender: duminjie@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vivo.com header.s=selector2 header.b=i7uLYsuI;       arc=pass (i=1
 spf=pass spfdomain=vivo.com dkim=pass dkdomain=vivo.com dmarc=pass
 fromdomain=vivo.com);       spf=pass (google.com: domain of duminjie@vivo.com
 designates 2a01:111:f400:feab::722 as permitted sender) smtp.mailfrom=duminjie@vivo.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=vivo.com
X-Original-From: =?utf-8?B?5p2c5pWP5p2w?= <duminjie@vivo.com>
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

Hi Mike!

Thank you for your reply!
Do I need to submit a new patch to kfree_sensitive for 'password_in' and 'u=
sernames'?


regards,
Minjie

-----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
=E5=8F=91=E4=BB=B6=E4=BA=BA: Mike Christie <michael.christie@oracle.com>=20
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2023=E5=B9=B47=E6=9C=8818=E6=97=A5 2:=
26
=E6=94=B6=E4=BB=B6=E4=BA=BA: =E6=9D=9C=E6=95=8F=E6=9D=B0 <duminjie@vivo.com=
>; Lee Duncan <lduncan@suse.com>; Chris Leech <cleech@redhat.com>; James E.=
J. Bottomley <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@orac=
le.com>; open list:ISCSI <open-iscsi@googlegroups.com>; open list:ISCSI <li=
nux-scsi@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>
=E6=8A=84=E9=80=81: opensource.kernel <opensource.kernel@vivo.com>
=E4=B8=BB=E9=A2=98: Re: [PATCH v1] scsi: iscsi: use kfree_sensitive() in is=
csi_session_free()

On 7/17/23 4:26 AM, Minjie Du wrote:
> session might contain private part of the password, so better use
> kfree_sensitive() to free it.
> In iscsi_session_free() use kfree_sensitive() to free session->password.
>=20
> Signed-off-by: Minjie Du <duminjie@vivo.com>
> ---
>  drivers/scsi/libiscsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c index=20
> 0fda8905e..2f273229c 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3132,7 +3132,7 @@ void iscsi_session_free(struct iscsi_cls_session *c=
ls_session)
>  	struct module *owner =3D cls_session->transport->owner;
> =20
>  	iscsi_pool_free(&session->cmdpool);
> -	kfree(session->password);
> +	kfree_sensitive(session->password);
>  	kfree(session->password_in);

You then also want kfree_sensitive for password_in.

I would also use it for the usernames then too.

>  	kfree(session->username);
>  	kfree(session->username_in);

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/SG2PR06MB5288D9E4D3124B5577ACA035AE39A%40SG2PR06MB5288.apcprd06.=
prod.outlook.com.
