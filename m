Return-Path: <open-iscsi+bncBDIZTUWNWICRBH7BVSKAMGQE5VMOC4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3D95309B1
	for <lists+open-iscsi@lfdr.de>; Mon, 23 May 2022 08:58:42 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id k14-20020a0566022a4e00b0065ae0c238aesf7705183iov.1
        for <lists+open-iscsi@lfdr.de>; Sun, 22 May 2022 23:58:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1653289121; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5EcZduGR2ZXyqCR0hTPR0/Boa4rctfg4Xm4d+t03v4ZGa1Uy/4zjsvh00q44Po6tJ
         yzIIyXfu6pwhroDkTxZiDdo7WbKcWkWD4SnLKzZwx5mOvXai2sQ0Ge24sWU43UeEQZ12
         BpNFgACjbgia0+FkFr/0CQvbnDpiA9iZQwfJskTvuQJMZVXBwSpNIN6TVDrISG0GVzY9
         YWapC/3a2wuCvt2kCJCUKDgJ1xH/nogczucNhs1UwNktxC+SnCaIodbcIvXyhFkikjr/
         XXuDtpRFfDwwf5F84SqTO15haPV3Lt2fjdwVPd9792QJFF3uf3R8/mWmFdBhPKli3jK4
         p5+g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-disposition:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HOFHJ+zdG/lys788Kk1EdvkHBc5Y+uUlD3ACpa1X97U=;
        b=UQW7D+7h+B9UIyRCr0a2Zkgf3ZiDbA83oJAm51wh/Ki0lzusK4fPxnCBK4FsIJlZwK
         cLqcNQpQVwNIabBRyNIPkHtj5xw4eRq0DfBDu2en6HNcDFhjB8Z+gFwwuwFY3Ozg1w+b
         d/+Jy140zBNjPCqoP8HjGh3nNIScYdeu4Fhd77gRd7KwV/XrzafM0TpHImWiEXmOMv2K
         nxkAVoeEDLOn0coKeAK1zM5dyQicRQ4MMJqsG57/+O19fiU1MSOCp+2h45phY4chJQA3
         V8yTdsqBN6FHaZRkVB+6ufyqYudrB62ePLoPNAGOTY28IaYZYk66mUstsoKArRBgqHXv
         PiNA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="ySD29rq/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=FrT9AejX;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:content-disposition
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HOFHJ+zdG/lys788Kk1EdvkHBc5Y+uUlD3ACpa1X97U=;
        b=JbZfW8Ua/gzQLGHpTCjHz0UU0qezbP72i02oI7LoVTmTHmt4xz0TFxgfiNmATB/FEn
         UTJAw1wjd7UjBRCs33/SYa/tBCrKFhrc0iHOhNXd2YPDhMu8bMaspHrqS9mo/CYzivZM
         w41niHlpNCIhI6p5VXfIeA9OEwE8t62I4W4FrOxZ/bSNrA3bUPmk/Ok1zezhZrTdf62g
         QDUBY98f4KyVgCrJXlGBoYFd0cSWUunkqGgqpX0UiMOmy6wmfuPdo2BU0kJF/VOiMaRk
         kmHBIBAoMKCkQzqWjRr/mI8+myOffgBXP+gnfoBA/K7P9dL8ttuxKTBhIzaG0V7jtXKd
         5j2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :content-disposition:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HOFHJ+zdG/lys788Kk1EdvkHBc5Y+uUlD3ACpa1X97U=;
        b=Fl0u5pfv0XOn3L+XFnIev7y2tJOUeklvMnpN5Ze9/YtfD319S7qcUxwePcflcOTmCy
         BBCDBIUO7YRArk1esMlf7i+LtYg+7C7AJq8RAjlbP9SxyKmBW9wUthzh3pWxy4egbLBB
         fKKPj3mUqrx9uvWAIToU7+8cTTi0SPsM9eDpqaihrKwqJvUIWwe8Y44uZ4UrdN28+GqM
         oQwR5uT4FCeGugsHX1Q0Q4zNPJPOKxcuEMTvOD4VfgFhmoPuhiKKOKAV27ATMyxqp423
         kbbZudtjf7GLusS5gN2AmQn/E73ed26ZxSHDnH64uAdUm/x97TwP7mSgluMJA0xWK495
         m//A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532O6Xtz/lJZVDMv069Y9P5onS8bgWzd8wVy3SD0t6sWOPCfJKvp
	4jWhTt1gzZPszMIrh9zegws=
X-Google-Smtp-Source: ABdhPJxPC5Tqwx5RglkaqPof3sNFV4qd8vNjPZHvv2IANuYQJhBoiKqxB5K2J+yWaQm3RDg7d8PBiA==
X-Received: by 2002:a05:6638:1182:b0:32e:5c70:c89c with SMTP id f2-20020a056638118200b0032e5c70c89cmr10505797jas.45.1653289120341;
        Sun, 22 May 2022 23:58:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:9481:0:b0:32e:b285:2097 with SMTP id x1-20020a029481000000b0032eb2852097ls596159jah.4.gmail;
 Sun, 22 May 2022 23:58:39 -0700 (PDT)
X-Received: by 2002:a05:6638:3894:b0:32b:7ec7:9106 with SMTP id b20-20020a056638389400b0032b7ec79106mr10837141jav.255.1653289119009;
        Sun, 22 May 2022 23:58:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653289119; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wa1e5QjZHUBLrMy7CYbE1TLHra47fTx3M/b2ARhSe8Gae/WAHc0cTb8QVHnoyM8LRh
         3CqIRst/sx1CRc9U/op1YTgzjuB++4CrEeym347W865+M7gZg2grnHe9BN93JemTklRE
         7Vkaux8LkWo52nCsPFdaBNrs89PaRqvrgmEskpJEsTIvgfnzURMuORjPfLSeGbiudeXM
         8I1a3U7XapI/RP/vFwJ9DPH/90xhyet2Wg7FhVNFjRj1SlpVZZq1VALnS5MjrVNgDJqx
         Jaq3M5fB0f2Oa8iQ9R87IQBPIz1LEeAwGH02TSW4W1/lFHaTaHWnkXfaoAilkWdpblQS
         Zbig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-disposition:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=0dnu8q5wMP6vrZR5HxxWysaHJ9XSrrXo+CfmBQ4sciM=;
        b=Ggy0DVnNqMg7tHOhmV5LjakhRpsdGz5YOo+aXWHed+FnOMdPXidFvqG9Bkz+GwRtvW
         tT9cBH81MK/Uki/Rmi25I5fnqo3CFm49MEp/fwydUwefEeJ5Mddt7wIOKl1Ev8IkxL1n
         /JedNdLpzvTyhaySCse4gPgCQqLtEpd3bstHWBuEr90xe5bK2KZJ+Q+lkDOwdvNxIBst
         wkZ2JdA9yAUb+CaMvr5TFgrEgA9+BxIRBAGxq2ENqkiR1AemCb3zUVXtl4MDIv1jQtPJ
         QDQRJNKn8ykFv18JNNk/+lnsMjm4DlVpdlpOTbU9ZP49hy91WA6PI8V9cgaTCidSqV2v
         uBXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="ySD29rq/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=FrT9AejX;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id q17-20020a5d8511000000b006495f98f57asi541983ion.1.2022.05.22.23.58.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 May 2022 23:58:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24N4XEQ8026614
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 06:58:38 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3g6qya2cnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 06:58:37 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 24N6wNnO011437
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 06:58:37 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3g6ph120px-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 06:58:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odXNATTlWNSW2wBatpQBAHHDkfwAA2J7kjDV6yT1b+XWuKS7hA/KnfykuOqaMTROwH9MOnCETu1Q2g8SSM3Tw4G4U5+ZRLgx0tqIdkHi8JDM+BIkMdvT9qkYUZwwKYpdhuj+7L3Z6fesVnqRzkLfLTqO3LfHXLY1DGanNCJAEk14zWFDsFgi4wq3WuwLjg/hjv0MYbW1T7Tqe48/AVdVvAEKsI0EHuQrdSr0+wOB/QQTBlq/A78+Ft3BKKE1nfIMVAwBDF0OLvyOYr7dZgjnuuHTucbcwFXD7Fe6b3zvqbO3YSD7wkkHFyHs+P+1HevvR1LNvXUNhf6eI8PKdGm2+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0dnu8q5wMP6vrZR5HxxWysaHJ9XSrrXo+CfmBQ4sciM=;
 b=B80zl7qhDmp5lMs0QmwG4VlhQmyNZ/Ao0lY6oNVaV/n5r6a4v7ekcLvX2rQOEgnDUN4Q30jA4VCTAKABN00W0qD5AZDVtkVhPvgCtWSOHSBVC/94g8BuWcxWtFj1RmkVpxZzXzY9UDFKTTL0yJY5Qp/0x5A3/tcVqPfbEVUt9PHNsxrNrhhblpdQmnhEQ+F1zxp9L55gyKNtG1tnC1XfT3TQOCh72tJrWLee0XygNLP4Cpw8gnZ0vOY0mw35smYbQdIUKwrRHqeEXM83Qt4JCUQQdNDeT1Ond6Lvij/3XduB1pJ1GxgYlR+rkUkHTw3U3IQaDPR7+3YM4CKhbnXQrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by PH0PR10MB4405.namprd10.prod.outlook.com
 (2603:10b6:510:40::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Mon, 23 May
 2022 06:58:35 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::86f:81ba:9951:5a7e]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::86f:81ba:9951:5a7e%2]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 06:58:35 +0000
Date: Mon, 23 May 2022 09:58:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: michael.christie@oracle.com
Cc: open-iscsi@googlegroups.com
Subject: [bug report] scsi: iscsi: Remove iscsi_get_task back_lock requirement
Message-ID: <YoswkQ4CLZL33xeI@kili>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-ClientProxiedBy: LO2P265CA0184.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::28) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f2b05db-a72d-4fa4-92c6-08da3c89a7ff
X-MS-TrafficTypeDiagnostic: PH0PR10MB4405:EE_
X-Microsoft-Antispam-PRVS: <PH0PR10MB4405E629A207FDC849B3440C8ED49@PH0PR10MB4405.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wDjS0UOzDFww2RJDLjW79wzkIGxDM0JX3dO6ITcbKUYoKwHiMClaOvTjlhg/3VBXMKhrHcL4hLKh7uLwRFc3IrE7kltJJXTUaRdv6HRJCqaJBdRSYBTrXJzMYEudUPHDE5mfpGKQhbEE+aGLnmmZMnyx91F2FoAjB1waA+9K3gdQkakBvFAW3FzNt+lj76FLIKO2pH3J0J5kJkQNbKQaYouP7hKc/fbGrAGyi3+SHi0KiZoQsAsu2fl1vnIz86xntyn98xfblxUTt3VDE9u4pJNcpiAbAZM5raRL1HN/64Ydk1tTOgcFH2qTi2DTgWDkbmlM0p1NLtbJACOiLPyqcQVFDuNLoFPPT3Gz1uKKs1Di5hSgcCVDEIWKOMALBeOcqZlEWo2uEs+90Q2hvWUokCwUUpVMuWiD+wTbGRy8k3QlwmrCATxdj+F4XYL6s37KRdGvOLDaUvvhgZ3e2wor4Ly2pfIk5swRBKTTsRPusAh1i5CmQvKGr/rRDo1/KOXPIU/EHB9xJ0r6Smyc/PBpKTcgWUlPk1KYyJTuZ4h01r7mLnW8HhrjE9auOlNepGWi1L7dQI35ogXHWG9e/lHiXm65zShcvuy5rYy19BsM5u15kk7woxOfhBZ2f857R5tNl4sru9tfqb7Kgu3ZYnWRkNxn36yE0i2+C2w3ZgbMiP1LTw0iNuZuwMhDP6xkNR03YjvbONcD5J26v0dnTJjF2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(7916004)(366004)(38100700002)(83380400001)(26005)(508600001)(6486002)(2906002)(38350700002)(8936002)(9686003)(6512007)(186003)(44832011)(6506007)(66946007)(66476007)(86362001)(5660300002)(52116002)(6666004)(34206002)(8676002)(4326008)(316002)(66556008)(33716001)(6636002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?md69LYQFgFQkzT/6ipxUIjO8bm/Uzi7XgpzAPgp4CFd9Ka/Hr67zXlxifpmY?=
 =?us-ascii?Q?W786naIjN1a9oo02DDnSTv7RgUhfQzWEG4pWG60S7eIBsnoT36C3I1hPN2FR?=
 =?us-ascii?Q?CnC2myGNLKDOgioFLdexFnx+QNwBbvd0hg/C/IPgqxKynzCnvFVm3ul7jfAS?=
 =?us-ascii?Q?9cuYpmVmKYrLCA5Vyj8Inuff2K+Uz2hFifScAO5bfJDKNFXkxsZIWlRuu7A0?=
 =?us-ascii?Q?2Edq2Sec6KTvBPSmS/B63Ft6L/8El5b9jWBmVKtzMzSwkR4ar9oMwvx0Zktp?=
 =?us-ascii?Q?Z5zLpuhAGnDkBNyEfOT5vkuJtiKjKscCpaI0vFQaJ1u2gtsiy2NvaFV1qVE9?=
 =?us-ascii?Q?PK7rPaQ+h46YXYSqYcUOkqHmux7t0p4UqBXtC7mwUJLHL+393A4kArumoV/p?=
 =?us-ascii?Q?4nFdWao4RJwJUjQhkOkSmFnMW+msugPHpyQtDLeZUC6ZWoNCwYVQEYS0bI3/?=
 =?us-ascii?Q?zg/PcdzdqDMC9StfOzM1zXoT0mV1iQLZYLOeKDey4bE9bjWPfouyWlAL3rFc?=
 =?us-ascii?Q?cnij8ZTMdCUReaA4mUqx625glB/7h5rDj6iKYwLZWO7kJ35EUcoo/92OJrqZ?=
 =?us-ascii?Q?0g6cMs/iN3AGSB0xA4me3GyADmGp5nDclfZTtaXxJTpZdlNwjh3E8WgRlWqF?=
 =?us-ascii?Q?a2xlclX7rDYsTISBqpe6pLTFGP0lArwfpHoHnX3qc+IOyiS18tlvftjItkeO?=
 =?us-ascii?Q?6eVfFcSedcFoj6P16cmrCj6NiaXuLqffSRjcxPW65V1ptZGtZ+sGxduxpBkX?=
 =?us-ascii?Q?K2P9ZlOO/vKS06McgENfUAjsjiHA6l6K/K6CQsd1bRR/esLeoQBCLklZJ37r?=
 =?us-ascii?Q?SCDTqg1w7OFMIehbwpfzH3TEWKyAAzI726f/rHOQ/yxDxwn1BaLLtAZPu5JZ?=
 =?us-ascii?Q?5miv3ZWBg8BFRTcBhj8IDbK6O2kL+uDah4bkOllk2MlwG59V4RZjpGFkd6v0?=
 =?us-ascii?Q?kTkiIpNqoxJIGWCm3tf5fVR3896T/S2KNkexSy7TsRFLqKRi5k2AQnllEjPv?=
 =?us-ascii?Q?lA3ctUGaPOphlzTiX8gJHSapYDSeaoOlyNXLoGpPKcL0a7PQNhT/X+Ssja1D?=
 =?us-ascii?Q?/rCLPBdQHZBhmYoKzAM5aT/az3OA9jM6RuSsQCHuN7HrTE26csf00VWGZECs?=
 =?us-ascii?Q?Or9JITL0JpdNPt5+GKF+bCl2UzwwDg9sCXC6PUCgWr/e7YDz64QuKjSbkplt?=
 =?us-ascii?Q?9zpnJLm1KTgLW7r4w/TpnXVwmadFeHbtAG5iJf9RYd2y5R3+W6rzKzCBJVlx?=
 =?us-ascii?Q?0KHGD5VSqScKcqz8jnyq6bQ3niUzpCif6Y4/Jn9Qimg04tiqjRHk9Lw+QxBY?=
 =?us-ascii?Q?EBRqsfD5lWPKPMtEh8fJl9saPG+FFlJx04fSavFdo/Vz63Nd2T+kHro4Ipcv?=
 =?us-ascii?Q?Y44+AWG4qawoHPD0L+3oOMv3N+RLP006O+thsxabZXNPD0cuva4ggV50MKyD?=
 =?us-ascii?Q?8G/MXq135LCzcCq9Rll5lKT4yKFCX1D/MjtiV8SXsDGBxF0Gb1ejyGDoYUO0?=
 =?us-ascii?Q?v3uQJEYbrR2OOJSXHSvRcTnB9EVabGC5I0w8tFeBL9jMU5UnwHuXF6ws84x4?=
 =?us-ascii?Q?xL7QfKKQmpAPzcQM2audW4oNCJ1PLve3iOYsuCLbY3P0d4FfA6BhjJeZK3YT?=
 =?us-ascii?Q?gwA/Lkv3D9sg43i70tqNWj2W/4ulh1rEK4CJOljjaFsMawfbk2lAoIUzn5Kc?=
 =?us-ascii?Q?Cu11FxPzzdpenbOWwBbuYTP6NPPIcODmAll4lnJNEJStBVCldHXYQzr8WHft?=
 =?us-ascii?Q?48Wm5v/BtMjZyl8889XliAAxGPJi+MI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f2b05db-a72d-4fa4-92c6-08da3c89a7ff
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2022 06:58:35.4326
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wigGWMD57aBCCaqu/dmWISvb+HQmDb1CxqjClDYQolWERhT9JnP3qVblcnNgbkyE0Zi8+yXoHdagf6kZAd06YChiACesdJ7HEfGlrE1E/1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4405
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.874
 definitions=2022-05-23_02:2022-05-20,2022-05-23 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 mlxlogscore=764 suspectscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2205230037
X-Proofpoint-GUID: x6Dzegh1jwWq23kyJlYTsP6XvXPgCzmu
X-Proofpoint-ORIG-GUID: x6Dzegh1jwWq23kyJlYTsP6XvXPgCzmu
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="ySD29rq/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=FrT9AejX;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

Hello Mike Christie,

The patch a01ff1e161ea: "scsi: iscsi: Remove iscsi_get_task back_lock
requirement" from May 18, 2022, leads to the following Smatch static
checker warning:

	drivers/scsi/libiscsi_tcp.c:649 iscsi_tcp_r2t_rsp()
	warn: inconsistent returns '&session->back_lock'.

drivers/scsi/libiscsi_tcp.c
    529 static int iscsi_tcp_r2t_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
    530 {
    531         struct iscsi_session *session = conn->session;
    532         struct iscsi_tcp_task *tcp_task;
    533         struct iscsi_tcp_conn *tcp_conn;
    534         struct iscsi_r2t_rsp *rhdr;
    535         struct iscsi_r2t_info *r2t;
    536         struct iscsi_task *task;
    537         u32 data_length;
    538         u32 data_offset;
    539         int r2tsn;
    540         int rc;
    541 
    542         spin_lock(&session->back_lock);
    543         task = iscsi_itt_to_ctask(conn, hdr->itt);
    544         if (!task) {
    545                 spin_unlock(&session->back_lock);
    546                 return ISCSI_ERR_BAD_ITT;
    547         } else if (task->sc->sc_data_direction != DMA_TO_DEVICE) {
    548                 spin_unlock(&session->back_lock);
    549                 return ISCSI_ERR_PROTO;
    550         }
    551         /*
    552          * A bad target might complete the cmd before we have handled R2Ts
    553          * so get a ref to the task that will be dropped in the xmit path.
    554          */
    555         if (task->state != ISCSI_TASK_RUNNING) {
    556                 spin_unlock(&session->back_lock);
    557                 /* Let the path that got the early rsp complete it */

This comment looks exactly like the new comment below but this path
drops the lock.

    558                 return 0;
    559         }
    560         task->last_xfer = jiffies;
    561         if (!iscsi_get_task(task)) {
    562                 /* Let the path that got the early rsp complete it */

Reading through the commit log it looks like maybe this it's intentional
to not drop the lock here???  If so it needs a comment.

    563                 return 0;
    564         }
    565 
    566         tcp_conn = conn->dd_data;
    567         rhdr = (struct iscsi_r2t_rsp *)tcp_conn->in.hdr;
    568         /* fill-in new R2T associated with the task */
    569         iscsi_update_cmdsn(session, (struct iscsi_nopin *)rhdr);
    570         spin_unlock(&session->back_lock);
                             ^^^^^^^^^^^^^^^^^^
Everything else drops the lock.

    571 
    572         if (tcp_conn->in.datalen) {
    573                 iscsi_conn_printk(KERN_ERR, conn,
    574                                   "invalid R2t with datalen %d\n",
    575                                   tcp_conn->in.datalen);
    576                 rc = ISCSI_ERR_DATALEN;
    577                 goto put_task;

Causes a static checker warning in the caller as well:

drivers/scsi/libiscsi_tcp.c:825 iscsi_tcp_hdr_dissect() warn: '&conn->session->back_lock' both locked and unlocked.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/YoswkQ4CLZL33xeI%40kili.
