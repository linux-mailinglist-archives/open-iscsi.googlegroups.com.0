Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBR6V32BAMGQEPSK2ODY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C08434349C
	for <lists+open-iscsi@lfdr.de>; Sun, 21 Mar 2021 21:21:30 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id lj2sf27369505pjb.1
        for <lists+open-iscsi@lfdr.de>; Sun, 21 Mar 2021 13:21:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616358088; cv=pass;
        d=google.com; s=arc-20160816;
        b=I26j9cSpngJdXR7QRT0JQCQ4I/1quAkJdAQqpy2sIv/6kq5B3GsxfTkumphD3frGXG
         d0/LIHUC9Jf7+U7lkvTMZKArune+s/STVIwvRYWZj8E8uUKLNZfgaJr0rgj7R9MAXgfV
         tGofZ2XMCYQwcvYJ/PxixiAqTnnv3MrI8k0w9KYwwMc7U52cldCqiIIs2lzILlza3kfY
         lb2yZKE3TQhaB5JGnroio8t93RqMONCfD/PJq1ur3Y4yo6E31gJ8U0YCLs1uVuWG/f9Y
         FQw3qZOY73U4dVIoSkRxkvYsORspnmtvILxEOoAfQWUSsrj7Op+sxDj2gB7P0niJMDn0
         R3bw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=ADrIosFCNqJAYZxgIUOlaM0Bla3mQk/8P0Yq3fMrbwE=;
        b=QWSlZXogZkGLwxDXsgppco2FjaaI3y7EhUYVmeZj2kAfMrrn/nEzajhsNwi2uZ+mMI
         nEA4sf67Dfeyfg29biFg9Gd/S81jvlnTk+z4tdFXtA7gjRMqQiftQvRosQigQS53yTj5
         QArSIdvIrAIknBlVuDgz8K+rBnROvRQVyCR86me/eJZojTP3sBWkuTXQIoSgx9AhDFbW
         4XflzUYu4cru2DuP16i2ZxTt/lTRFh18NN7oozrrlKQcU8q+JWK5rKXGHsNNbsYWKXRx
         EwifJw0+GyuA+PNQvWRAWknc9y9WA+vKxc5P7yYKjJzwF83szfagjqazfFTmtRFUx5lx
         Y4Xg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=L8rQavbI;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=dnBcovCo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ADrIosFCNqJAYZxgIUOlaM0Bla3mQk/8P0Yq3fMrbwE=;
        b=i0DMlRK+q9dJzvhtOFPgasKQjIdqOvw6vh+9DsRLnZWF5tyhAxYdIQoNTqRKHfih0n
         GDI4MyO6T1JZK/Ff1O4TBvo29VInur22TxJkQ7Q3xgtGeLQdjJBBv+FXHqqrZMo9OCew
         pXnt7/xzxadadVdhiv1doy1vuIJCafA6K/niHmuw33xaNBpUah22iVpzOQiUGpNwARjw
         etxMzm6Fc4v1K4rLYkzx7LpOOmbqP9JMqN7X0ByfHJdcFGl8Bfu7CBG/Z//Ava1ZAePW
         SBBGCMCDkcyFXBhmLddE9gIbCjgCXeHfoSdjEQ1WhoxAd7OcQGJrcysdFMJR0/Cgqi0V
         uUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ADrIosFCNqJAYZxgIUOlaM0Bla3mQk/8P0Yq3fMrbwE=;
        b=UdttFZnM5JCJuNLgU9uHpuIvHhbw6usvACA6PoBxD3mfRuTX5rbj4FNWgI/2LVsqCZ
         lM5ptKdotGpq8IPejg9p5KGKJEIvG+AE/zgVw7HUnEBPnGN78Dep0URBDxONSjegmRST
         qusHYFw9roL7C9MLJed9xgAKMbvUs9XK2+J8cbSJriC7g6iIUyirmWb4LOjbEBz1qzn/
         uW+wVixPgiEWAtVIIQFre5USAZi/vTim4vA/DSZ8Lm5Xs1DoLN0V2mOngwaU1r9cCB/L
         djJs79SDHKv7IabrqUCqQZCrFve2OlpjF8YEWlyyK1mQ8L+la0LEVPWlcJu34e44iifz
         C6Eg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531dJipcvl6V5pHSYYkmKYIn8eR+ZxYE2uLZaUc8lw3+mxkq9OKr
	dUp5RtmhcgO6meZdNN1MsME=
X-Google-Smtp-Source: ABdhPJy5glMSUu/I5PDDUEvNh+8TK8MZhUVf7rkBfirbQfgQWKy7BiO8nsUbgdB94kFpnZmAsfMMIg==
X-Received: by 2002:aa7:8e8f:0:b029:1f1:5a1a:7f82 with SMTP id a15-20020aa78e8f0000b02901f15a1a7f82mr18992960pfr.52.1616358087640;
        Sun, 21 Mar 2021 13:21:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:cb0b:: with SMTP id z11ls6260303pjt.2.canary-gmail;
 Sun, 21 Mar 2021 13:21:27 -0700 (PDT)
X-Received: by 2002:a17:902:e549:b029:e6:6b3a:49f7 with SMTP id n9-20020a170902e549b02900e66b3a49f7mr24778811plf.52.1616358087000;
        Sun, 21 Mar 2021 13:21:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616358086; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ucfk4NyJ/rhcm/RynnaVUd6GovN49RUyLlbDwCr9rfAH9/8TcOXui9GMK7H+w3++pM
         hpTqnxCXRqlBzv/osgSgfqz4QP/v0XpkIdzwiK9N9CttjrNbvaGEdxJ9qJXPBhUH5ulM
         t/11lZzNAoU7GvKrn2Es8U0gLxY51BbkvFWfIdKAXSPObaPHp7Hnx0thwuWwkaAFPdrF
         DLmrwsSfuQYXpwCpb0sxyaCbjzMfvq0oCEb5kTHQVa1VvII78zyV55cm0GutZ4Gxa0gF
         +7NZq1sWbmQuDfFY5ASbxP8fhR25jF4/5u+7+0urKEqsnl/sjX8Eg1/Ao0jqVABZlJ3K
         my1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=q+AvuX93nVuZPgA3QcXascb+BK3hNqMFlKl2tswYta0=;
        b=tDOvycRnmIJ3hg1h3aaZ7UU9Ki4GW9PBCLXtYNzxBIxdKrN+sTprozFpOMnz6yHgVK
         mQW6UcFTvsuY6zZLLf0D1wvV2sMCWyXjRzUKsNBKpwS0ZK3Lgx4sEo/qNKBfngnofuP7
         d6n/h35s96aLhlSaTW033bDI4yubpBd0WhYccro9B/2yJPEEBRhTQEv3RjiEI8sW6Pby
         6WhgyMAl6S5aPVFHLEOeP8ralUFkByBDSBPxP1sbAXfsfuF1XksDBWP+vdITRgTmvo9j
         Tuh1RNyPCp9DJUEpKkYaAGIJrrZFU8tm7D+cvGthj8G7H6DaiiAmhXIoOCX0PKNId6C+
         QSgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=L8rQavbI;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=dnBcovCo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id e7si590150pfi.1.2021.03.21.13.21.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Mar 2021 13:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12LKKBgv037055;
	Sun, 21 Mar 2021 20:21:22 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 37d9pmsuq2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 21 Mar 2021 20:21:22 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12LKK1tG036222;
	Sun, 21 Mar 2021 20:21:22 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by userp3020.oracle.com with ESMTP id 37dttpuvg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 21 Mar 2021 20:21:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lw134jQDpUkdFAXDTlOmnDocfghuKm6hvUw4mm6EzwMTNOnaquiMWIAj2pbcQdlBhcozXRdofis8NnQhnu1ySrw9tfgyvxYzA+t7/yiXRonwp5qK9fDsxurwqZAl3y0wRz626247QI8AS2SxYeL4z8DYvd8RXB3OMVVZrQV3y+7nNQEoXMR3q1yXivZflDBjsGYVYDq62FKYJRgmwWNclMn8Q7pCTTv2AtWPzICB6TNfkZ2I4Dta4UFm3tTySwl6CFUvCaX4wzJafRNNTc9XdRw3gldOPS72YywyXmjx31OW41LpgVdZSNKG0gSemETIXphZJwgtV8aaQlkXwGlbiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+AvuX93nVuZPgA3QcXascb+BK3hNqMFlKl2tswYta0=;
 b=BB90t/O8NMoRY+kcjjIpnGHXHC0zMeJ6ZVdC0oLeCzq/b+6HSAncB8NMGnc3ZeeieTedP/xZc4dqKK+tp+sWwmEqFlJE7N3HAA8nHGjwjCwtn+pW7tX3o7kiCntmOtmfyolx6j0m2PuKUvGEEPpKP/Ntd3xoM2PnS06Zb1/kjtMiXY2dAFhhoYrqb9U7pT/jdSidHYVs4aV/A7FUxqNfMpmUKLFAInR4lI6w7xxjFwhDRscex0zkA4Q0M7LjjIDiX1RdB7Z+dps8m0QhuEZHPN8TGsP1ytSZDUd59sZw4f1ON3I0bbfemQWw4W1dzFAPk7grDKFBOezR9hLolHD8jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by BYAPR10MB3477.namprd10.prod.outlook.com (2603:10b6:a03:128::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.24; Sun, 21 Mar
 2021 20:21:19 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4%7]) with mapi id 15.20.3955.025; Sun, 21 Mar 2021
 20:21:19 +0000
Subject: Re: [PATCH V2] scsi: iscsi_tcp: Fix use-after-free when do
 get_host_param
To: Wu Bo <wubo40@huawei.com>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com, michaelc@cs.wisc.edu,
        James.Bottomley@suse.de
Cc: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        linux-kernel@vger.kernel.org, linfeilong@huawei.com,
        haowenchao@huawei.com
References: <1616309229-612596-1-git-send-email-wubo40@huawei.com>
From: michael.christie@oracle.com
Message-ID: <2fb1bffa-0717-f3b0-cdd6-2960a898b496@oracle.com>
Date: Sun, 21 Mar 2021 15:21:15 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
In-Reply-To: <1616309229-612596-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.88.28.6]
X-ClientProxiedBy: DM3PR14CA0149.namprd14.prod.outlook.com
 (2603:10b6:0:53::33) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [20.15.0.5] (73.88.28.6) by DM3PR14CA0149.namprd14.prod.outlook.com (2603:10b6:0:53::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Sun, 21 Mar 2021 20:21:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2a916c9-f54b-4910-934c-08d8eca6e2ad
X-MS-TrafficTypeDiagnostic: BYAPR10MB3477:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR10MB3477F9D3A8133287A66C162EF1669@BYAPR10MB3477.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:813;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dJ7p+EbG9dUPwyNce4irC7+hbrz0ZKSlns8CBb7MzBgZYsh3o8a0WDNq3hav75bD90JILEBOeT3QFPkzDb1aFFOoYexoGanelFLoXvGvXh4gKKEzIs6nHsOMQAA3lSiHDLkSDdfb7id2zrH2yj5zqVcDKHKdqXITlnHNu4uCNJ3I+wNVoqbbCHACNagrQqsxRbbDBk98w5+hMta9kyk+3r9ZvOIr69RFUfRHjg8zDS5XZhf6fuIengh7XV+595MoczxenmKSISevo7SYgYomQ75tkJOg21/qua6wDjhD0YbX/QAaYfA5Kq5Qs6vhzZi7cTgGiMT5wHS6dsAuqgLw8kqRCELaIh7hvBrF1b+uQWcDDbc0kxYMkRBNtQcV1+XiTpSpXDgwHCIA+5+MOjtAdRwZrekGWcM19dSs1WS70sOGJdF7Ajv0LscPAG4fDWd5o7LzZdaPEKjCf/cwBgI2WWGWp1EDwWCVSz4V2Hcu26zj0pWJE8Ly39rdPVNwortuv1tSvr+L7Zk6TPjJbBLa8g+xMHVBT6Spx+Zz3+jNGSsexAC39GU2Xg5IAd5kbcwLv6Aw4/ocSDkqSKSpdOLr9IWoDlgPTQgjQJ3DoubYvTRPK0v3DTpNJvBx2sQJZ3R3se5wpAlapeZHr2O90Ndq6iHLFDQMlJETKUQjYHKwmnAaGn9GPq8GNOsD96//0vJyv3J/vbgewZi7uSkrXvDsAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(39860400002)(366004)(136003)(396003)(376002)(478600001)(8936002)(2616005)(956004)(26005)(8676002)(31686004)(186003)(16526019)(86362001)(16576012)(316002)(31696002)(53546011)(2906002)(6486002)(66556008)(38100700001)(4326008)(36756003)(5660300002)(7416002)(9686003)(6706004)(83380400001)(66476007)(66946007)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?ck8wN2Q2Mkh6VUdGL1REZkRvb0l2SDFzQ0hqQjJ0S1hSQlNFTGdNbGhYcmZV?=
 =?utf-8?B?OHN4Tk5HT2JIWS96SUhiS1VwTVBMV1psaFZXMUlCeTQrRjk4aU8zVEMwbVNY?=
 =?utf-8?B?SjQ5dkFpWTVVY1hldGI3VXBNbE5xRnZKRkR1Z25TQ0Y1UkVxYWVxWE9ob1Vn?=
 =?utf-8?B?RDQ3L0VnUnJSRlBDVUo4S0o5S25qclFMcytMVnNnM1RqaFF1L21TVHBkVEsx?=
 =?utf-8?B?eE9KNXJRYlRXZWN6c0JYWDhTcWFjTlMrMVhlNGdCTXlvdXVKNndFYVdjQ3NK?=
 =?utf-8?B?b2RNclRwSE5xdzFOMTM5RHhlZ0JKazlMczFIY0tFNTllb3lXZ1dPaElJZnRu?=
 =?utf-8?B?NHNtYjFNOVZ4QmhTN3BLbGRHdGpaVnFlSkl5c2Z1N2JBZnZVS1RtcVRiY1Qv?=
 =?utf-8?B?NDFvWnNQRHordTBMNWVNajZZQWxlWEVLOU0wMzk5YmtIWmVOTm51MWpPTEVy?=
 =?utf-8?B?YVFweDhLYU5sOWcyY21SaHY3OE5QM2x1c3lrZ09wd2hVNEx1VkliN1c5eHR5?=
 =?utf-8?B?ZVJPcGdIdlJUNndTQ0UxeXZ1cGNEQWdmL2huWVVKbnVXelM2dnBueksyU2tm?=
 =?utf-8?B?YVBWZCs3ZzJMUHlRVEtxQS9jbXg4S1FxeHlGdWErVGw5M0EvNUZnQWw2dU9z?=
 =?utf-8?B?WWR3SmFXb3d3STl0NnFod2JEeUxVOWJrR0FIWHFiUFM0RTlUazBrMEs2ZWsw?=
 =?utf-8?B?WVkxazRQdWMwZVlSS2JqMlNSZTFDYzdKL2ZpMW5BRDVIcEhYKzViN2xOaUxI?=
 =?utf-8?B?QSt4dFJ6MU1UbmRIRE4zZmtYYnlTT3ZSZXQ1dHYrRXM0SVRTNWFEakFQa251?=
 =?utf-8?B?Q05CTEpOcmYyd1RaTkVNK3BqYTdnSElnNC9IT2dkdEVpdEQ4VTVIaG5mSjda?=
 =?utf-8?B?ejdsTE1wV1Q5UEJoa2QvN0JjVGRjcUFCdE05UURRSEFNdm5lbjlKOU4rVStS?=
 =?utf-8?B?NmxkLzRMSE5sVitxUkpQVGZlbTh0dlJtRDNyMTV0SVZNbUZiSTh6MnBQN3p4?=
 =?utf-8?B?Z2tGMzJWc1QzZE1CaXJnZWRzaDNHUExqc0o4aGJKL3JSRWwwck1yNUpCYUhw?=
 =?utf-8?B?VzNONFB5ZlNWazMycmhjZkhHNTV0S3dTaW1YL0EzNndWYnJ4MTZHdElyQURa?=
 =?utf-8?B?ekVFWW9sd3RZTkMvN3c5SmpRazB6VlVQWWZhTnZHT2dXTXl5U0V6QWN1MXZN?=
 =?utf-8?B?SFVXMTU2K1BiVVlqSlhXdjVJRlJKaFRrbzBaR2dJc2dQOU5ycGRkVTEyNGZl?=
 =?utf-8?B?ZkNEczdGcDZEOVhSS0lRVW90MVkyWU1CRTdUSUE4R0w4bzQrWWNLUmNyWk11?=
 =?utf-8?B?Njh1YWx6V1ZlK2huZ0NNbmlZY2o2Qko1b2Vkd0Z5SVFzeUM2aitaWHNuYUlt?=
 =?utf-8?B?UzhxVzhCNW45Szh1U3NpR21kcWg5LzRxN0ZtTG1JdGpHLy8ydUlobE1RVSsz?=
 =?utf-8?B?UzVjbmVSK2F0OHl3dWh1dlNzMHJabU5qaXVhVU43TjlZbmRrSnQwMUVLanVI?=
 =?utf-8?B?bTZHTzVJWGdoT1pnNXNvNFNTcU80dDVkRHhWdEdzNFFpQS9SVkpjNDhoOXJR?=
 =?utf-8?B?OVJOaXlsTXBaOEVQOU81dm1NWnp5SndqQkRNQytIWU5tYnJ0NHJJTHk4YmIr?=
 =?utf-8?B?bTRaSHBDbjI3ZG5ZSHJFSHQ4Zi9QTDdxWSsxb2xRMW1Cbyt0SlhhbFI2ZUJ2?=
 =?utf-8?B?Z05Mc0hHYnVHS21qaHJkTkZnSDdmSjY5b1VDUnVrckRrRTBHdzBvNWlFM1lT?=
 =?utf-8?Q?EBQhlOsM4FDQFF8Ltkyle3T1kMO0GlgNt8uRWc4?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a916c9-f54b-4910-934c-08d8eca6e2ad
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2021 20:21:18.9475
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zDCcE8iqXXRze0nQH/hKsXz+n1OzCeNeI6arePpfAkbY7CFv5t37tsB8FBPMxBz25Wlw/SJtDcCP7f7mxrFGmM5w65o778K1zmKkxiLm7HM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3477
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9930 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 spamscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103210163
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9930 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0
 adultscore=0 clxscore=1011 malwarescore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103210163
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=L8rQavbI;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=dnBcovCo;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 3/21/21 1:47 AM, Wu Bo wrote:
> From: Wu Bo <wubo40@huawei.com>
> 
> iscsid(cpu1): Logout of iscsi session, will do destroy session, 
> tcp_sw_host->session is not set to NULL before release the iscsi session.
> in the iscsi_sw_tcp_session_destroy(). 
> 
> iscsadm(cpu2): Get host parameters access to tcp_sw_host->session in the
> iscsi_sw_tcp_host_get_param(), tcp_sw_host->session is not NULL, 
> but pointed to a freed space.
> 
> Add ihost->lock and kref to protect the session,
> between get host parameters and destroy iscsi session. 
> 
> [29844.848044] sd 2:0:0:1: [sdj] Synchronizing SCSI cache
> [29844.923745] scsi 2:0:0:1: alua: Detached
> [29844.927840] ==================================================================
> [29844.927861] BUG: KASAN: use-after-free in iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
> [29844.927864] Read of size 8 at addr ffff80002c0b8f68 by task iscsiadm/523945
> [29844.927871] CPU: 1 PID: 523945 Comm: iscsiadm Kdump: loaded Not tainted 4.19.90.kasan.aarch64
> [29844.927873] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> [29844.927875] Call trace:
> [29844.927884]  dump_backtrace+0x0/0x270
> [29844.927886]  show_stack+0x24/0x30
> [29844.927895]  dump_stack+0xc4/0x120
> [29844.927902]  print_address_description+0x68/0x278
> [29844.927904]  kasan_report+0x20c/0x338
> [29844.927906]  __asan_load8+0x88/0xb0
> [29844.927910]  iscsi_sw_tcp_host_get_param+0xf4/0x218 [iscsi_tcp]
> [29844.927932]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0x84/0xa0 [scsi_transport_iscsi]
> [29844.927938]  dev_attr_show+0x48/0x90
> [29844.927943]  sysfs_kf_seq_show+0x100/0x1e0
> [29844.927946]  kernfs_seq_show+0x88/0xa0
> [29844.927949]  seq_read+0x164/0x748
> [29844.927951]  kernfs_fop_read+0x204/0x308
> [29844.927956]  __vfs_read+0xd4/0x2d8
> [29844.927958]  vfs_read+0xa8/0x198
> [29844.927960]  ksys_read+0xd0/0x180
> [29844.927962]  __arm64_sys_read+0x4c/0x60
> [29844.927966]  el0_svc_common+0xa8/0x230
> [29844.927969]  el0_svc_handler+0xdc/0x138
> [29844.927971]  el0_svc+0x10/0x218
> 
> [29844.928063] Freed by task 53358:
> [29844.928066]  __kasan_slab_free+0x120/0x228
> [29844.928068]  kasan_slab_free+0x10/0x18
> [29844.928069]  kfree+0x98/0x278
> [29844.928083]  iscsi_session_release+0x84/0xa0 [scsi_transport_iscsi]
> [29844.928085]  device_release+0x4c/0x100
> [29844.928089]  kobject_put+0xc4/0x288
> [29844.928091]  put_device+0x24/0x30
> [29844.928105]  iscsi_free_session+0x60/0x70 [scsi_transport_iscsi]
> [29844.928112]  iscsi_session_teardown+0x134/0x158 [libiscsi]
> [29844.928116]  iscsi_sw_tcp_session_destroy+0x7c/0xd8 [iscsi_tcp]
> [29844.928129]  iscsi_if_rx+0x1538/0x1f00 [scsi_transport_iscsi]
> [29844.928131]  netlink_unicast+0x338/0x3c8
> [29844.928133]  netlink_sendmsg+0x51c/0x588
> [29844.928135]  sock_sendmsg+0x74/0x98
> [29844.928137]  ___sys_sendmsg+0x434/0x470
> [29844.928139]  __sys_sendmsg+0xd4/0x148
> [29844.928141]  __arm64_sys_sendmsg+0x50/0x60
> [29844.928143]  el0_svc_common+0xa8/0x230
> [29844.928146]  el0_svc_handler+0xdc/0x138
> [29844.928147]  el0_svc+0x10/0x218
> [29844.928148]
> [29844.928150] The buggy address belongs to the object at ffff80002c0b8880#012 which belongs to the cache kmalloc-2048 of size 2048
> [29844.928153] The buggy address is located 1768 bytes inside of#012 2048-byte region [ffff80002c0b8880, ffff80002c0b9080)
> [29844.928154] The buggy address belongs to the page:
> [29844.928158] page:ffff7e0000b02e00 count:1 mapcount:0 mapping:ffff8000d8402600 index:0x0 compound_mapcount: 0
> [29844.928902] flags: 0x7fffe0000008100(slab|head)
> [29844.929215] raw: 07fffe0000008100 ffff7e0003535e08 ffff7e00024a9408 ffff8000d8402600
> [29844.929217] raw: 0000000000000000 00000000000f000f 00000001ffffffff 0000000000000000
> [29844.929219] page dumped because: kasan: bad access detected
> [29844.929219]
> [29844.929221] Memory state around the buggy address:
> [29844.929223]  ffff80002c0b8e00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929225]  ffff80002c0b8e80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929227] >ffff80002c0b8f00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929228]                                                           ^
> [29844.929230]  ffff80002c0b8f80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929232]  ffff80002c0b9000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [29844.929232] ==================================================================
> [29844.929234] Disabling lock debugging due to kernel taint
> [29844.969534] scsi host2: iSCSI Initiator over TCP/IP
> 
> Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> Signed-off-by: WenChao Hao <haowenchao@huawei.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 93ce990..579aa80 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -783,22 +783,32 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>  				       enum iscsi_host_param param, char *buf)
>  {
>  	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
> -	struct iscsi_session *session = tcp_sw_host->session;
> +	struct iscsi_session *session;
> +	struct iscsi_host *ihost = shost_priv(shost);
>  	struct iscsi_conn *conn;
>  	struct iscsi_tcp_conn *tcp_conn;
>  	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>  	struct sockaddr_in6 addr;
> +	unsigned long flags;
>  	int rc;
>  
>  	switch (param) {
>  	case ISCSI_HOST_PARAM_IPADDRESS:
> -		if (!session)
> +		spin_lock_irqsave(&ihost->lock, flags);
> +		session = tcp_sw_host->session;
> +		if (!session) {
> +			spin_unlock_irqrestore(&ihost->lock, flags);
>  			return -ENOTCONN;
> +		}
> +
> +		get_device(&(session->cls_session->dev));
> +		spin_unlock_irqrestore(&ihost->lock, flags);
>  
>  		spin_lock_bh(&session->frwd_lock);
>  		conn = session->leadconn;
>  		if (!conn) {
>  			spin_unlock_bh(&session->frwd_lock);
> +			put_device(&(session->cls_session->dev));
>  			return -ENOTCONN;
>  		}
>  		tcp_conn = conn->dd_data;
> @@ -806,12 +816,14 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>  		tcp_sw_conn = tcp_conn->dd_data;
>  		if (!tcp_sw_conn->sock) {
>  			spin_unlock_bh(&session->frwd_lock);
> +			put_device(&(session->cls_session->dev));
>  			return -ENOTCONN;
>  		}
>  
>  		rc = kernel_getsockname(tcp_sw_conn->sock,
>  					(struct sockaddr *)&addr);
>  		spin_unlock_bh(&session->frwd_lock);
> +		put_device(&(session->cls_session->dev));
>  		if (rc < 0)
>  			return rc;
>  
> @@ -901,10 +913,17 @@ static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
>  {
>  	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
>  	struct iscsi_session *session = cls_session->dd_data;
> +	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
> +	struct iscsi_host *ihost = shost_priv(shost);
> +	unsigned long flags;
>  
>  	if (WARN_ON_ONCE(session->leadconn))
>  		return;
>  
> +	spin_lock_irqsave(&ihost->lock, flags);
> +	tcp_sw_host->session = NULL;
> +	spin_unlock_irqrestore(&ihost->lock, flags);
> +
>  	iscsi_tcp_r2tpool_free(cls_session->dd_data);
>  	iscsi_session_teardown(cls_session);
>  

We are tearing down the structs in the wrong order. I think sysfs removal
functions will wait for users accessing the object, so we can do:

1. remove session from sysfs (iscsi_remove_session)
2. remove host from syfs (iscsi_host_remove)

At this point we userspace is not accessing the host and session structs so
we can start to tear them down.

3. free session: iscsi_tcp_r2tpool_free, a modified iscsi_session_teardown
that only does iscsi_free_session instead of iscsi_destroy_session.
4. free host (iscsi_host_free).

Before the device_del function waited for userspace to release refcounts
for sysfs accesses we could have also moved some of thise to a release function.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2fb1bffa-0717-f3b0-cdd6-2960a898b496%40oracle.com.
