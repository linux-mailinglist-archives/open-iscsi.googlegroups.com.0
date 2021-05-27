Return-Path: <open-iscsi+bncBDVIJONZ3YDRBJENXSCQMGQEWJLD56Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDF53924EE
	for <lists+open-iscsi@lfdr.de>; Thu, 27 May 2021 04:40:38 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id k9-20020a4a43090000b02901cfd837f7basf1808119ooj.14
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 19:40:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1622083237; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mij1IUO7uChob9NT3PcUI8uBrlo70QTG4pIOnmLH7qy8OfXaokp6F2ffZu5dtGieD3
         qEoDLmsSw6EK8+ODY0EDiKr/awgSMm0gj8fBW/ZeEXX9Tm+7Kyq3p1y2Ovcvm+tkW18H
         JcMdZr2OjgMPVKB0O5WrQyli8Zq7mBvpnYeRNqt1TmauGUC871HKXq8C/x0iVP4HvAH0
         9w+mTWYYWWdwpXB35y7H98fQFNJ2grtw42NLgDI1398AvonDiqarb0MQjmPzeZpsUUCw
         QKTuMfTY+InW4qkgBp4qqWn+pvBTJhlq7KNHkD+gB/eFxvW/r9w/tnbYi1wFiGHR5N7k
         hrgw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :date:references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=QKOOgVtKw/lNd5Z5ewrvfSHOyE7uax5c2/hYI8AbJyY=;
        b=cHSifkcLPTd+vEQzjnZ5kww9KFe170WUUC7rnmE+Bf6r8b4jTL6bDUHlwh2y7uy2+4
         KoxURHLn4j+vL77F7xgvoeQlv5U7rUnq740qrlxtVupkv5ZxBEdVwU6/cW25AyQK1fDj
         kOOzWBDb8DOQSnbQ/D6lENUvvCiVpABOxI2wTbWrqMhua1KLss8LcFcwX5s0pn54xQTe
         ltNhbo9HZ6Ss0fepGyncRAnoVu9BVqjC8AwIR8ImTr+ft/H9x4k8sXNJIRrAcpefsjJe
         BXJHyqYAjf9ZbA34g42GUjLUrDuK2hDLnv4G85/4p4aTsfcCoK7e9QenR5jhXlPHnmVu
         +/Ww==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=aR3HabEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PmoWrjil;
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
        bh=QKOOgVtKw/lNd5Z5ewrvfSHOyE7uax5c2/hYI8AbJyY=;
        b=nmlNRDAKDvVu0yX1/cbXO0J6IkchMlVML5hNBNFQB9kYmKDEgDbHJrvexNNQCoaMDv
         qrEWGHKJUFra5YBBstwmWfPvxdDeQU5HTvmS+u1iI2IdS51szyb3w+PiOOoDngVfIbAD
         9oIDy3BbAA+1G+Y2PwscBCoveNvN7MINX4c/1Yf2Ql3G2gfM5CGNH4P308b+CY51WdSL
         4dRnh0HHNxKNdr22EoJlBva3wXFWtscjJcUQWouGxi+smZXczHQdXMqA4lm6/LXTyGOE
         wc3Z7/TPPqH/OgbMs3e8dcWPLlQ7NutjJgdLNHSzhLjllh/xEnYDU1nlm/EnwRW8itT2
         +fRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QKOOgVtKw/lNd5Z5ewrvfSHOyE7uax5c2/hYI8AbJyY=;
        b=hnCN27+mfZf6zKav/AgLg0AV4qv3qMddLrqd9JZecbYbzzXsE59ypOoJX/IXyVOTPY
         yN6Z6rFeGmuD0pHc2cjlLQf8n52IhpGE9DGdZ5p0A6eJH0adRpx0IvCyGKLU2oLSWomz
         dqPQDho4guZ7KJIoRDYrHiieoLzHkKY/gr8lbpswcexZmWBJ00raT25K+8gDbDg/eUty
         4JpZ/hCWXIOS1OHp6sXT9XrHUoy5y/jMrbo/+7zrahN3xsylpX4SxbeqGUmDkxx+0qfO
         voESOfUSpRm/gURkLF5a2bV3Z8fdGvNJxAIJdSC+gJtgvQiMIrS+atMRmXK360EBQDP9
         MhfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532dvhHO66QdKqqzLcdAuooDD5xYrAXF09D5jV6durCBOlmWIX//
	FLFbYh8q6BQjUzykHOSUjFw=
X-Google-Smtp-Source: ABdhPJxwmyDU998DsX6pyGBJ5Rv+yaXHG51BvDJffFij97OaSnyMYotgYYOkR4wbV/lgZ8yUORwetw==
X-Received: by 2002:a9d:5eb:: with SMTP id 98mr1078915otd.61.1622083236977;
        Wed, 26 May 2021 19:40:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6d11:: with SMTP id o17ls479775otp.11.gmail; Wed, 26 May
 2021 19:40:36 -0700 (PDT)
X-Received: by 2002:a05:6830:2472:: with SMTP id x50mr1012769otr.277.1622083236533;
        Wed, 26 May 2021 19:40:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622083236; cv=pass;
        d=google.com; s=arc-20160816;
        b=lfRc+DN1Ewl7EUX0GTnVLLmqXsbxgDgVx7uZgZP2Y8QRtYaUk88JXEXUaDTecDpYlD
         HsLXHN2O3NAQNP5y6iJder7lENgI1IoJMfVygYEGou/Gtnmcc5t2Eoa98VQfRtUuyiJs
         ronRzXOwLoR9EWSyFpLuRJ753rDks0jgEzs2GXFpAPZ7U/iCyQDFyzf+5Q0k2BJ5Bpn2
         OgSHAcOQ2EAwnODXFxjN5BYJRvlwyqDavI4PlkdjsiPXv9R2b5L1pSSVZERuoBeOnKfc
         i689k+We+wMVjuPXJXLr/ic8KW0IbF69w0dOXQkkqvIUrfRaFCmGhbXzzrCjDfBQIpHK
         LkAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=MUFz+CMpOKzQGkKnSiJgv5LKeuEzVhM5q2sgVeCHfmA=;
        b=wme07IVJ7+i/Q7TTpZi6gj6PRluJ8lLPWDB/WiCNQ4F5rCfFFH6mE5b8joP8MJWZzE
         XVROvCfVGAbczehJxUm2NvPsHQH8u5L6sFBntOcFkIYbQqZpZ1KEfyAfUBHS9+e/PSVD
         WUOeblhcx/nH2zN9cLFDHq8SDC08mqqpDlVsnuPAkecKbm/5OXgeN4kRep1LW85pGLrZ
         Lkzx3LIjcSbxNL0Jetje/RRmbWPci6XdTlQgkSyIb6sZ8yt0lwhGb33NPAko6SXhC+le
         5+NrVak/0YYtnXkbpdhRjfUG6rZJtpPmXZkJF/hwrTVvvH7kF0NnbUSto04IPyRilBuL
         TsdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=aR3HabEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=PmoWrjil;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id c4si137158oto.0.2021.05.26.19.40.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 19:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14R2YB94024283;
	Thu, 27 May 2021 02:40:32 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 38q3q928ds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 27 May 2021 02:40:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14R2Z1NY095436;
	Thu, 27 May 2021 02:40:31 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2174.outbound.protection.outlook.com [104.47.55.174])
	by aserp3020.oracle.com with ESMTP id 38rehesbd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 27 May 2021 02:40:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oso8qMIUjjI4TMz6xaYPcJb9vYzoLdZB6QiQ+Nx07Qu0Ro81Us3B9n5CTpaqt38ZTYyMrFsdoKmNknTIepjJLDzWDaf12CqWUPw2zmchlPh7Ld4m195ZpRRoa81ud5IeN13oJcVXEb4UCFopU23F6Kpz0QSwBQI07GFy7ca7LLrOOsYrGbxxTf2q7w0GuKy1mEyOFcNUuIpFO8A/mwcCeFBle2Wb16+AtxVHf/2d+vjJoxkIQkxZxoMPhXxGbJc+HClRB1AqcmrPsMXK3KXBtejd+yAtEnUMwVXZiHzW5adFV/bDkusCZGjjfHJM3W4CFB+lKFauUGN5kRYLhc6Edg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MUFz+CMpOKzQGkKnSiJgv5LKeuEzVhM5q2sgVeCHfmA=;
 b=eZYwphKbMZmBIMC/AXabM/JUekTW/85ghZHRQK5m/huyRrwfZosMqYpEEDvymidyu34NHGp5DWnPv2CWcLB8uKZlOrzcEW/Q7JujMKAmCRqlMQY+OsWs3khFfHiKC8TvLwMRYIjxTw9vTHPgx2JFBfkksUZ6iRT3sC6UIA6AN9mMIMtkWK8bnKlInDEQAJ02OvINq3J3zNjHFNmMCk4Fr8BnQlIdiVU5mDclwvN7VbbNO/Vw40IaCes6da46ieUPQCnWAUZb88kfz+g6JEg/yZU4DUvft/uFMIWIq8Go08pee3v8eRdLswR7/+3vGi3MRHboph8v7ZkK2+muxv30Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4438.namprd10.prod.outlook.com (2603:10b6:510:36::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Thu, 27 May
 2021 02:40:30 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796%7]) with mapi id 15.20.4150.027; Thu, 27 May 2021
 02:40:30 +0000
To: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Cc: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>,
        <open-iscsi@googlegroups.com>, <dgilbert@interlog.com>,
        <jejb@linux.ibm.com>, <linux-scsi@vger.kernel.org>
Subject: Re: Aw: [EXT] Re: [PATCH 1/1] scsi: Fix spelling mistakes in header
 files
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1y2c0vs0t.fsf@ca-mkp.ca.oracle.com>
References: <20210517095945.7363-1-thunder.leizhen@huawei.com>
	<162200196243.11962.5629932935575912565.b4-ty@oracle.com>
	<60AE2272020000A100041478@gwsmtp.uni-regensburg.de>
	<215847b9-f64d-8cb2-e53b-13123770ca1a@huawei.com>
Date: Wed, 26 May 2021 22:40:26 -0400
In-Reply-To: <215847b9-f64d-8cb2-e53b-13123770ca1a@huawei.com> (Leizhen's
	message of "Thu, 27 May 2021 10:11:41 +0800")
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [138.3.200.58]
X-ClientProxiedBy: SN4PR0501CA0076.namprd05.prod.outlook.com
 (2603:10b6:803:22::14) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN4PR0501CA0076.namprd05.prod.outlook.com (2603:10b6:803:22::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.12 via Frontend Transport; Thu, 27 May 2021 02:40:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a92226e6-f336-4af4-9c5f-08d920b8cae2
X-MS-TrafficTypeDiagnostic: PH0PR10MB4438:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB4438CA77041EA62D067C06888E239@PH0PR10MB4438.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jYQeTUGhQPfqS7npIirN1Ah7CtV6of3SoxG9inZdOjKr/7mLLaKb2NTXaZH5/TtckI5Hanfcl3OiIM4j+ez7F/s3eSA6UiQKaMUmQ2xUeGCBsCpyPmfCiVAQvYN9q1yClfAJZANKUK/SzIwjyuVSxODBx9tnStl+DZHgkiprVE5H9ldRm2dV7kc8qnD4Gv2JBis6DnE0HGnZdxHuIYwTm9EO13P3Zllx/TWdS8p7fIpMdibQEv8+GtERyoWIzX7jTGBqxBnRlvyBS2BqH+fYzLYVmlbRDKpADBYSSfU1xYoDenIFpXyKL81spwNnoaJBLhD48bGVDiuPNdtwaGnMhfenlsEImP+m+MCG9KtKcABWL2IE9m72Pm/+wQJgBQ0HouPpwhXypU/zgev2Qb/KxF6axHxhG+OfCfHjLQ+Br6Pa40H2AbctjtZnuB7sG0O2fmjYVW/nfs0fyp3g4NNhFtItETbxalm4esr/jBvCyN1ORE+DeyhIDQ9iC0hetn7kyn8HhtMvArBg2Df5LfLiDqIXUPrswgSorH8OIcZ43WWFzwuMwSUckdPfU0onGRq4fbgzGwHHrN+78plnh8mVXNYqZQ7nIpLt47a9IBwJ9lP3cfTwaLPDmTCREpGejkM4tdHqXXNcCCLRndCED5zG92Cmtf9Uu8+czxa5r0zTofs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(39860400002)(376002)(136003)(366004)(956004)(52116002)(86362001)(6666004)(66946007)(66556008)(4744005)(16526019)(36916002)(186003)(7696005)(54906003)(5660300002)(38350700002)(478600001)(6916009)(2906002)(55016002)(8936002)(8676002)(4326008)(316002)(26005)(38100700002)(83380400001)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?IVOQQXvwT3djKjV/aXQNyw2dplDzGavMdoZ+/xMu6CADqwg81Pvp6jsquO+v?=
 =?us-ascii?Q?N+pjn4xlnVHFDE1t2sDc/2YJ0CbtIZJKBYS2EGTBwtOCbAicwMYB7aOYJ/fQ?=
 =?us-ascii?Q?g/4T7n/eG79U/Omom6rIwbfQpjXvOCUqYnr+ZQmE00Q72FUYwi6tShxDHbBF?=
 =?us-ascii?Q?S5qGGXHQLJKSKRD+6wfw1fB5Cdxvka01cD0IzXuJ08dEKnegXM5Q3fRL8gia?=
 =?us-ascii?Q?YaFQI6CmIFEqBo4kyaAUBssTzuBrWOMN+MONZNnUXZkCJvxSWQaCq5FthYNH?=
 =?us-ascii?Q?HGypfqgCBpTirsRO4nY1ncgzZp8h+Z63w21QQnYygX/CVMdqzgqh2oskSOC7?=
 =?us-ascii?Q?UqfUWQEWoVDl9tIJ8j2YIsbQEk8D3EKArGNFyD3wdM5kC/m5vi7N+vFdICTj?=
 =?us-ascii?Q?oWOH+8G1Dx1eJ61bbG1D8xdAB1FgQDZLTqV/wXPfmgbetyex+COIl7kO21jA?=
 =?us-ascii?Q?ByOMdEvcoNO48mepLe3WqpTzY5WAQvrOc9SbyNi6BHjblpHBWCGnF5sCL36J?=
 =?us-ascii?Q?KJOvgNeI65SRZZaVFmD19ytWB6WgnyUzWQma7Nc1MQO2uDhNuVm7rqRtUwzV?=
 =?us-ascii?Q?caXnqwhXV21Qk0gl3rTZW371C6XTZzRtU2vthHDPEUbRlHbbwovDK9rS9NgI?=
 =?us-ascii?Q?QLNx9CkNyWgpCvbN8ePZA+t1r/dBH1SFSHol/ulBZmduEbWsBEoRBj07zFq0?=
 =?us-ascii?Q?wo+c+p8nX46EVqVnR2vxc6slc6Q5T3NaM7Hxs6oJs9AMdpn5+cM8azHvEfB9?=
 =?us-ascii?Q?sH8FK7XQf5X6TgyDMmPx5P/oSQpmwlQs0P5WqcXUyxC3a0WniyuvwDUfih5Z?=
 =?us-ascii?Q?0ijSKM+P3N3Bh6dYvCzkqHrorA/G6dhbmMe4nbQ7sTe39cxPtoZxgM/OiOoS?=
 =?us-ascii?Q?867xFPv6RbsNPE7DFP7Tx4PnWU8RTDDccklcw8OTxdVkQSg8SD/+jGLN+HfZ?=
 =?us-ascii?Q?0AnHUGfn4pDwcRy4aPabRiU5U4EVqRuGY/d010FV4TQf1pt5v8iKmdc739RN?=
 =?us-ascii?Q?omh2ccUq/r609B73r96lkQfY+mVIvUL4PMOcsUcFNCEIUW9YrmksAG8AT6tf?=
 =?us-ascii?Q?OCaFKnJmDkxIAqu/iX88TGXqRcMpLVFxLyVEP69zr047PKjlG8C2hjRiaMib?=
 =?us-ascii?Q?ZRlYuGT9dDZVoBfpXRwOj7nGwCKgvdjSfMo2/xooxYMqd8DLTttH+0bcnFoG?=
 =?us-ascii?Q?Os8KAJyg+iAqJGGt/6M/jQqii4Brq7JABMkm2KtbGxnsqzC9+KOQSdDMSX/S?=
 =?us-ascii?Q?2fxQcn5xHgp2By3SdH1s6P3Z6eihyFckJytlJAUldKEpF4gWYKxDmggrUFnL?=
 =?us-ascii?Q?cvJIsojPZJ/N96Bq0LQWfT9d?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92226e6-f336-4af4-9c5f-08d920b8cae2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2021 02:40:30.0451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qhaMvoOzwDxAybpfeeI6nZVOlXj86jkB+UrgB69Iy/CO8i+aDI/4BxcqLlAv0+qM03NFRiRjXx1/MJdbi9bulIwXkmLzYvVu6AEZQCt6PVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4438
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9996 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105270015
X-Proofpoint-GUID: r_XpG9CZD3Jehwz22xpW16ilfmIeSUww
X-Proofpoint-ORIG-GUID: r_XpG9CZD3Jehwz22xpW16ilfmIeSUww
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9996 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 clxscore=1011
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105270015
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=aR3HabEO;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=PmoWrjil;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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


It's an unfortunate quirk of b4 that it quotes the description from the
original patch submission and not the message that ends up being
committed. As a result my commentary didn't make it to the list.

> Busses isn't a misspelling, it's just that few people use it these
> days.

In the context of electronics and computing "busses" still appears to be
widely in use. In any case, whether to use one or the other is up to the
author of the code in question. I only merged fixed for what was obvious
typos.

Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1y2c0vs0t.fsf%40ca-mkp.ca.oracle.com.
