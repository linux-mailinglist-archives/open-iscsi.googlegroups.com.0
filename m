Return-Path: <open-iscsi+bncBDVIJONZ3YDRBB6KUCCQMGQE2EB2I7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id D020F38CFD9
	for <lists+open-iscsi@lfdr.de>; Fri, 21 May 2021 23:24:24 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id o7-20020ab01e870000b029020d37e3e144sf7970597uak.1
        for <lists+open-iscsi@lfdr.de>; Fri, 21 May 2021 14:24:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1621632263; cv=pass;
        d=google.com; s=arc-20160816;
        b=02+YZsjUj6g7Y/4xDI2aZ2i0Bk3zcNj/DHyvIKf8xGhdcjJkXRcrvDhndG9dBODN3n
         Plg1n8pxNmlMeO/YFsHqKwlXfJzmZ+rx8d8YoWnExsDJCd8q0In9iYIjUxsmMJ53szuQ
         72jwNa37cR0yrR36q8apDEEXrR4dqNvI4wUt9fI84GBb0zybLTcs9ijJLia7jqAL1xBu
         c+roiJLA3ntb7Os1CAXwAXpi7xOBS4pvHrkhv2Vi+l7jw6VLRW3MrOjqEkFZAJrxLSQJ
         YbnJ3oQUg2mSuhyvlBNFbmXJJ9scPHtJZE2F4BVU7EYn8WR/ndMrbeYai2P98Gv4FKyP
         WiuQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=15xe3FX5JRotJ5TYDx9uYqZJGy427cBUQ69XxCcq2fk=;
        b=0jTFxzkn4myMcMpoqFEKU9n05K4flr5LtvsdrL7zQTFjQDwoSjHp0fmV0WJCdFh7+L
         +x8TvmeTlcd561U/5e+paSBRIw88Ve71bX8Y/G1Q9X4JLRsKgYB+qc1tlGZnRBFWuqkz
         /37e/CMw2gjj5/5OOsqcXcAprdV1ZImAFMsXxz4Rkrzq+ZLknF/SBUgGhH+OI6TgJAhx
         p0/ygmeC+DWxBzi0HiPbLqRKsFmFdRaPmLe9pjCFU+oQwySeqre1pHXzovmsS5WDEFjs
         tyNjsBn8+5KjLMeSfw6ac8R05QyIy99TcbrxZNaeDdlduDzozg1SlxuM2Tv/J7TyJ/VB
         2VUQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=h5GH60cb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GfqYt6+M;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=15xe3FX5JRotJ5TYDx9uYqZJGy427cBUQ69XxCcq2fk=;
        b=ZTBzeB/cdDuiVWbycVbJG6GDu6okohsYDS3zJ+r7zqqdmvN7IBFjrol1ZAidw5gjMN
         ErXFBuJUPt7B2ovPzWQ9PFTGh++pNOY+OYNe7XbzEYyQAZrnqf0EuoPdQf91wWHO/pf+
         ImDvY3MYZmuiBopT+ZWns8XwB4RY0XcE0CDBIFFCX2L/Iu8h0f/kWLWnbjkwbKhwD+rw
         C8/PsrwZ8aSysW0HtCKmz5fyyV2vwRAYhGeOSCkKtwq9+d6kWCNUpjh96DbIhwsvPw5+
         xoz9rYikYFpfCM4XJj0yKSLou6XJzv5o//7nz8srbN78WUEbYS9P9aC4DZpIq5RApulC
         fmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=15xe3FX5JRotJ5TYDx9uYqZJGy427cBUQ69XxCcq2fk=;
        b=oao0D1heIXnEf7lDdBEfARh3uN68Z9Lat8mVdPNajfWQWhGj0ZkBCX26nwDyElTPYT
         kTwejTwF43RS57+XApMBn1B3hKoG2fM2oro+jPc2uUvDUPsN6VPOazVQq0yXzwoJtqJ3
         gFk69u3dyXxWm2lHvdTClUZiGaqh3IgAG869FzgEoiha9ES/jjRi5AIIi7HnCfsKD925
         YJzsZtZN3KuU4Bey6jYJd87w5rA1DDopdE+mtfJQ3hYVLCKfa6TO4uWfoSd4gWT+DUK+
         F6mN6oNII+wqLCgsbEW7K/ts9XubDwPn2gC1/9G+PcqSH3Yz4YSGr47BWcctgzTKXY2R
         pmvg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530byX1oeI8Y7EhuWUHLxPmvVO5VFYbC/LVvM2kHdUi3FcoRtcU0
	+uLCrArTFD8uBiF1sLq3pXA=
X-Google-Smtp-Source: ABdhPJwzXLxEcCI65+QCDPEcNy6QhVREAjcKP4MjPi4Mrq8nbDCY4AaWmoIJsHjMfnat9jK79a9ESw==
X-Received: by 2002:a9f:2d90:: with SMTP id v16mr12698883uaj.138.1621632263706;
        Fri, 21 May 2021 14:24:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:c989:: with SMTP id y9ls1592669vsk.1.gmail; Fri, 21 May
 2021 14:24:23 -0700 (PDT)
X-Received: by 2002:a67:6948:: with SMTP id e69mr13011315vsc.26.1621632263097;
        Fri, 21 May 2021 14:24:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621632263; cv=pass;
        d=google.com; s=arc-20160816;
        b=FhBqVPKFtJlyHGLFzPbUsnqTWM7XLmCauPm7rgO5V9BO0oMv5/NrXMZrSDndhSQn8a
         BkRt/RNNF+9ScTwxIUCIC5/hC9xq2J4XnAKfa+cWkn3rFjrlNhcLutGgJTEiaURudtjV
         ZNsGO+49XETnYVqC+mMLK5QcG+6IF5SwC+VE+RtJ7qeSYCVvnL8NvGsNRjGWcyJrwAds
         Ktj+sgbxE1CLzTdrXW+OZZkkjxToB/gx6TaZeicfdh7xOh/fU/8x5S0EHHTFY7b3kRnU
         9dFoQ2C1uSG8JnY0NL+QVBaZaZS1raZvls2ePq0zwSznmAOLSzRSKvIRuBzyuUmrUkC0
         W+5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=6xr3yAG3oJ49MwFD9BFNJ2GbIK32uASIGEP9OpRkua4=;
        b=Q5lzuyCgOptIg+uYe4BVXMb1ybwmZJlHYP5wPwRNu5QAtzfHGPKobWPsTbf+HWjURn
         ADjJ4WcwFiR8MbohbCOf98AEeNkTRb85j1G4mdEzNptonyf+5zqyDHEsoXqL81QCNlxJ
         4/qIbyP9zNU1lHKAM7fxCU8MeyEmusn6bJQekcuFW7yMM9Om8Fwaj7HZ5kTl/2hjNL8g
         QKZXfjk+pP+ndhf45gqfdbD+OIzfkuFbArpgigLEp/QyYMfqxD0RNBSJzd6E3G07Ztpl
         /wSuQGu6cARiftdSrjdJVZ07/X/qXAgOindsw/AEThVBPx+cHXhzIVif02XuDdKVhpB4
         LuAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=h5GH60cb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GfqYt6+M;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id a1si684681uaq.0.2021.05.21.14.24.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 14:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14LLFwBo045086;
	Fri, 21 May 2021 21:24:22 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 38j5qrgsxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 May 2021 21:24:21 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14LLGQ4I007453;
	Fri, 21 May 2021 21:24:21 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2108.outbound.protection.outlook.com [104.47.58.108])
	by aserp3020.oracle.com with ESMTP id 38nry3uk1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 May 2021 21:24:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SydESbIywvWKSx6/gIVgVKZZxmg99NpZq4FjmUy/3c+qwxiFuZMs6YKTCkzI/EKJqCFaBSmWx5o8Uho3Iv/Xim+7OwzkXvBouMhZLW/k3vj1oIoKYZ5ZnZCUknU5OlWpAeFthEVxYb1WqqVYSlP94X5o9u1vA0WKlmALsg19ybnVziJ4MRHldOduF6xvk06LPj1DBwdN75ArqoV33OxL4G9Io78YQkr0QLHrfm0a4CUGwFSttEaz0ZUwllIMjV0Fx4B+Mep/+hqSELKUFQJpLvo+D4ZXNseXPgMUmAXJbGJ5H3Fb2prHiFgRRmyyTbAA1N23BGEWSfLN2uAYXgARPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6xr3yAG3oJ49MwFD9BFNJ2GbIK32uASIGEP9OpRkua4=;
 b=HAVxFnx6aGDj4nmNp6/qSDWSspyiAQmgaaPH+MLUqkjEeqX8RXZJsGU8+EtKml8swL75YzU++XwTqZ8mXaMWhJcx/BN966x2+NK3FK1Arp9e9RrDC0jMm/fo1EOKnMiZktC7QO/DMygO9uRt7mpyP2IE1W1IR2DcyYy1nkJXigBeBIbREGJME+le7XsR0YRq3vpNzTMu6eycJVGCV1nIXYR7rSwMAdpy5C0HZPkzsjYlHnuP4oHcgXCZN8xkL4DezOR2dCAZ39NTB5wos937F5CyQhzhk9hgAcbrsGwK2dBruZuLI2XxIeCc1t31HgV8z2+NGvNNaElGAx55f8ejFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB5484.namprd10.prod.outlook.com (2603:10b6:510:e1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 21 May
 2021 21:24:19 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796%7]) with mapi id 15.20.4150.023; Fri, 21 May 2021
 21:24:19 +0000
To: Zhen Lei <thunder.leizhen@huawei.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James
 E . J . Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen"
 <martin.petersen@oracle.com>,
        Hannes Reinecke <hare@suse.de>, Doug
 Gilbert <dgilbert@interlog.com>,
        open-iscsi
 <open-iscsi@googlegroups.com>,
        linux-scsi <linux-scsi@vger.kernel.org>
Subject: Re: [PATCH 1/1] scsi: Fix spelling mistakes in header files
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1eedz232t.fsf@ca-mkp.ca.oracle.com>
References: <20210517095945.7363-1-thunder.leizhen@huawei.com>
Date: Fri, 21 May 2021 17:24:15 -0400
In-Reply-To: <20210517095945.7363-1-thunder.leizhen@huawei.com> (Zhen Lei's
	message of "Mon, 17 May 2021 17:59:45 +0800")
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [138.3.200.58]
X-ClientProxiedBy: SN6PR2101CA0021.namprd21.prod.outlook.com
 (2603:10b6:805:106::31) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN6PR2101CA0021.namprd21.prod.outlook.com (2603:10b6:805:106::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.14 via Frontend Transport; Fri, 21 May 2021 21:24:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f9b5079-6735-4be2-009c-08d91c9ecb1f
X-MS-TrafficTypeDiagnostic: PH0PR10MB5484:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB5484932BD10A8486473456438E299@PH0PR10MB5484.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: upI0MCzdS3l90wCI4OqQpldPryid4I6GoCDS6NZs1nJrYMXUvIJtK8go9a4jJysraF9pMQ+XsZ94bblXU898phq0MKYaZfQHC19wMDeplTF3j4wIZE6jQ6tiOux83MYNMMW6/AvdWoFyW8oQO3ij/IAtQ7quXElx3RL6d7GjnZ0HoojRiiVRi2Dy2qw5v06xRxbjUbE3d4PMg9WqePPKb6MERQf7foYFxaJ0pqvGxq7UI/A4Qzi2lOH+Qbr36VZGiJ2cTRG3m7K8AiTk5LROe1jCRcKi0crMbZf4Ej0VhnS/0uqOSIIJrkROgEyTInPvSW5T66etzEZ3tBGn2v1TzzymmoIxTYI108FaxkMXrWzyO+fGDitgI2V00NKXlw8zu6QYi5Zwp2LN2jIGCW1p92+lt7FxICy+Js7+t4Jg+ET9uPpBLtqKo3qmD2MRDlE1gSGUy7HcBpthJxEVkn1wmUed6Eoy0DpiWGNZ7sQTcksa5GcXM3CGzt4OA4lkUYPnVofSo/D+f+K9jAzuYN0HqB1whk637EWZPbLlwDRPgj5r0xSNlGbukHpe41kFQf9BrkRh25M/nx0PqlwNj1P3+Keg7V7ITOSNRgzur2zWy5TJhHAFQbyBGlfIpj3nvNd2FCeuAyPXHwCKJY6TcyTI2BtJ1hpYY1Ku11gkUGZIUNs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(39860400002)(366004)(136003)(346002)(38350700002)(26005)(316002)(2906002)(186003)(55016002)(16526019)(5660300002)(54906003)(86362001)(38100700002)(36916002)(8676002)(52116002)(66556008)(478600001)(66946007)(956004)(558084003)(66476007)(6666004)(7696005)(8936002)(6916009)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?2SZqRiAH5k2KOSs20jzXuLaLBjK292PRHfSlgumP+uQak52XjxIk5FbwX4/K?=
 =?us-ascii?Q?/8iZfoeP62bEI3IutLFXOl7MNYtziMj5xNm0Wa/W9xXjq6rx4HLmJfx+dwfV?=
 =?us-ascii?Q?JzeTqOkdUfa8kWwe7TkP8EUOZwbHxX/Cxc/bVkf2lNrqH9/Iu+ieSkSIsz1o?=
 =?us-ascii?Q?frQAn3NW75C/5DpXPm3NJa78y9oW8MTxDz/A4ZDCRFxNxC4ShE8IseDMAahy?=
 =?us-ascii?Q?N0FY9zUkRnG2Jse0cba8AMuE0ilLg7X+zTD2OtWXN9n5uS+qUoBgIUosLlOJ?=
 =?us-ascii?Q?JwBGCzIN5PrmmZE4i+xflyfZiIQYmDxRrztXSH/RDd8RuLRVNqG0Ap0Ou9tK?=
 =?us-ascii?Q?ThYUwsH/4Fxpo6X8gJHCNo7eTTTNsC2ZqSsJvQgE5ATHWLUr8T4Ludlfw3Ri?=
 =?us-ascii?Q?N5HoNKnTEoHxOTis5qDTReKlJpC3VHogr8DIy6nvKuDWimt0NH9/EJ+Z+6hw?=
 =?us-ascii?Q?T6Q/63tT1YjHxjTMGtE82ywxdw+fDwu2v4vQn3XyVopKHnqylAlsGpOeZxxZ?=
 =?us-ascii?Q?zWyV2dqgjcWeJ7uYN+yGnQCSlJgb59hSb/knyKKkwGdnxfXcKTd6sUOgK8vz?=
 =?us-ascii?Q?SNee/MOiQnq9JO93g0NMOTTgQFuB7GyJ1wQAzFrwfS/DTq9vtWTg6ZWQU6e3?=
 =?us-ascii?Q?WbFPfSE87CukbvaLTE6/Q/xj3Q3hRdecBKQs0kS0Pbt0gTMDCHMzyI9TrIe+?=
 =?us-ascii?Q?mneeeYKiT65ygjJqfl4nBD7suhvMEQpculGRf8E8xEysoCj6CgkxZYg3yEsP?=
 =?us-ascii?Q?ZB8Fsipw2+mCYlyGw1l+Cgcsl9yqZYRqZ+e1ihAtjn56oGvZNsHDWEvAhbtA?=
 =?us-ascii?Q?e6kUGs0F2XZk3OwVeAt6pp+XDDcREiaBN9w05ggXIY2OI3M0fmMdxwLfJTTf?=
 =?us-ascii?Q?t9OiBDbSBikenTrcv8/sVQVUhNIJwOqu8+yiQHYVbOLS1g0EkmwIqJVJbFSP?=
 =?us-ascii?Q?jXnPwEkwMjzvqFE4HnvJYXOMOPd/QN7Z5LK/sDGyArUTleup8P6Bc1N/IVzL?=
 =?us-ascii?Q?vBoF4qXekyG8qMz52HcHl3UbyJUaGPa+S9Ib5zxfcihP4P4w50Njk/rz/Ofs?=
 =?us-ascii?Q?U6MrgzOCIHInW9PKOeHCuZSCFYsetPcB6ESKTfPPOq8bXDKCqxJW6USL9/+I?=
 =?us-ascii?Q?XqZf4DCd79Ee3lQw7kMgxI9H63y1Bj51oyRMaRzFQhhjSJAZu2nZ2Eg6PkfH?=
 =?us-ascii?Q?a94Ujl/Qi1sf0+tp5W07GUsCH7Lhbm18TSZHFodbscBxil+dEGaZ2S8iKjLF?=
 =?us-ascii?Q?elgfCzzlmDsD57fXGN6VFK+hgWh6asbPT1pXo8wk+zhzEp2BzRo+FBHzIeDp?=
 =?us-ascii?Q?JKng+8Zl08aTG9sLyLck88yG?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f9b5079-6735-4be2-009c-08d91c9ecb1f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 21:24:18.9027
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tsJ1WBUDkO7xSyTx2b4lOLGLRXeErrW+rKmp24OzbW6Qs26Lb8g5mdySFOiKjogDDYtSoRcJoPgDGtiT4hI3+ouIEnsFQJGdC8BXsRCQ0qc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5484
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9991 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=866 adultscore=0 mlxscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105210116
X-Proofpoint-GUID: pPsl-FL_jU3ESsRQ4VebTj2frwcVw_XY
X-Proofpoint-ORIG-GUID: pPsl-FL_jU3ESsRQ4VebTj2frwcVw_XY
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9991 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 impostorscore=0
 mlxscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105210116
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=h5GH60cb;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=GfqYt6+M;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Zhen,

> Fix some spelling mistakes in comments:
> pathes ==> paths
> Resouce ==> Resource
> retreived ==> retrieved
> keep-alives ==> keep-alive
> recevied ==> received
> busses ==> buses
> interruped ==> interrupted

Applied to 5.14/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1eedz232t.fsf%40ca-mkp.ca.oracle.com.
