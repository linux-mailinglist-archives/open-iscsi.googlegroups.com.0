Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB6UK36WQMGQEFMVCVAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BD5840A21
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jan 2024 16:34:21 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id 3f1490d57ef6-dc64b659a9csf4802758276.3
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jan 2024 07:34:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1706542460; cv=pass;
        d=google.com; s=arc-20160816;
        b=GILArdri7KYplKtBpcAdt8du58lpPGlS7pES+TQol+Xcsb7LyiNr6ZzTKaLbjwHfnB
         mim2aocfLVdLoLOL1ypk3bo+tOHz8v2XJVicu0uwIak4uPt9+FYwrCsBJmHwvjdxeU2r
         VKMlbbc6gJHgioV3rFXYpXmP1LKp3ONGk95t/s2eN33+IF1PWv+NSYiKi+7g/mxocAcL
         xP/Un7Hnu/WZb7PFB5DUhSJjDRLv3n88S+0GUUxilCimLcL+EkEOXdyOmZwLI3N9qHT1
         qsVtgTC+At7tABPqs7AVwGDCJaZOK2O9b59jxFVDg3sgdAFFNhFROgHKDdSS66saBosd
         FmIw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=z3hCbHXiWXPlC0aF5uAyZcsMOw9bycRnwsqU+Ygw9KA=;
        fh=uIm0gx6Kq4HM0g41T8h6eMWnt/oqe3VU1FJ8f1lYtTg=;
        b=vanYK8wD9wKUo/Upi3CfSunAMHZEzeh9G0o92zRJoxk55U9Agp2GU6jK2yERrYB1Nh
         2YAqbK/Xzbal4zrpDeXx5HDm07CbpFwqN7hGnRo+/fsd5wA82nTeZOXVpo1B7phfFZpH
         4oyl5Yz3/w80ZSLQXVfFHLNP8uQbn121BBc21Mpxv69qy9GQ8TLaqI1e95dp7dFIqhi3
         Z8icODJq62JMinnB8bPA8cjvPZPtMrY180fpOWnaDJ6kd40Q8uFzlga2SaKk1zEqftIA
         rPNXGiKZSGq2rKRiM9GtY6+pYcho0eCBntu8OyLv3VrJQde5YXOtdja6jxv66dpI3TQW
         /jVg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="d2s4hqx/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=E91ihVSo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1706542460; x=1707147260; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z3hCbHXiWXPlC0aF5uAyZcsMOw9bycRnwsqU+Ygw9KA=;
        b=W+HIvcCmxdroLBUbUj9IPgfPiCAqAFqpCO0KSeEUlV0W/3qt2zvl7vPBs7V0viylVl
         pkNrtRwd+XN8YQnpFDJTkDq2FwKeSs3mf/zTd2+y7PrYFz9ltlfiXhBnFyC8C/y2r3EY
         KmFFIoc7NlbngdgXqnmOIJVA1rmmX0hWjrY/I1ZNUqXbQ4Fak+lTI9lfzO9U0AsbiWtB
         43UPEEZzW6oMpzObnSeSveu8I84PmeHk4bXgwN79TaRrEitawCgKfzGnA8R0Ctu20zj6
         6pSl7JuNqCEh5j7ldrWPQpdAgVGfsl723M9UhsLshKhRZhpEjxN5P+cEp4Qfm3BmzTwl
         +b8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706542460; x=1707147260;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z3hCbHXiWXPlC0aF5uAyZcsMOw9bycRnwsqU+Ygw9KA=;
        b=beSnM0a2qRGKnR9zI2YQmI+Z+sibDoFggrhwt5i6YtC2Ay36GCWIIXzA/qHhbL9ran
         uSLXK8nypGtbyG2L8MLuPTYV7i6TwhJe9uTDYEnvol4eTUfhdB2gvlcBSQGw/MdlZR0D
         WsAJ/BMn3CfFPcVuX39GVeCfBBtH4Oossg6UU91jFXXGBTGSlAVPdaiH927SBRgxqTQf
         P8+ArHvd3wR+kZZiwm4Bb5PSkXLSOsTpbL9ckET0JOt1WszOB2+q4gZBeSidz7q8RC1W
         ctZfKCmWOkdJdQgk8Uz1Qp7PrlynHIcOtWSbr8v37/fe+NnsUZElEtsiT5VE+kxoqw66
         w4kA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YyudLOnr/qjOBWT1Ep69YbLKr6kxFIDvatuNuh1fc1CwFm6oWs7
	ZQtfArfyyJDvW3Ujr0p78PpeIdMw5EL9mW/jtWA4GconGFWxkTZz
X-Google-Smtp-Source: AGHT+IFZEYL8czDoXXkbInkRYII5wl0lPJ3dCSkSFMz6ME/gx4IXTilnaHoMgvoDNNrJnM5VG/oH6Q==
X-Received: by 2002:a05:6902:2210:b0:dbe:a688:8ab8 with SMTP id dm16-20020a056902221000b00dbea6888ab8mr3513902ybb.0.1706542460388;
        Mon, 29 Jan 2024 07:34:20 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6902:704:b0:dc2:1b5a:3ea4 with SMTP id
 k4-20020a056902070400b00dc21b5a3ea4ls262711ybt.0.-pod-prod-08-us; Mon, 29 Jan
 2024 07:34:18 -0800 (PST)
X-Received: by 2002:a0d:e612:0:b0:5ff:9866:5f18 with SMTP id p18-20020a0de612000000b005ff98665f18mr4113437ywe.46.1706542458050;
        Mon, 29 Jan 2024 07:34:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706542458; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pc4Kw7524FQZn/0BXnM/ZC0Npau24y55RLgBGEYIubThrEUWqd989urQUW+M0HwG3f
         R+Avd0yT0stQnfcm5Myde4WQuITfQev43EtzlPKrnhoJp5qBlOobtB6YxRsXiwZDWra/
         zgpbrPvQ4BqDKnPC6iAesxNUuYoJ2wzodfHMtg0kd7psCI3ONgK6NBjJw88NluXshDfj
         FfmmOhUStKoFMnIAYcCmMNREiFaJBz5XMagCtpzv9qkN3tjQByLzaB1KdGTjYUUNqdBS
         AvwpP/BHZOhIicWOarqjRY/+dJcksKl7a/0YitXyI8lQ6p0QSeR80Zm5unD/YA3DvqvW
         cUOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=DKHniiFvs1zTmftY1pIjlStJ4iNekZmtQvYgXlv/VnI=;
        fh=uIm0gx6Kq4HM0g41T8h6eMWnt/oqe3VU1FJ8f1lYtTg=;
        b=n+pO+MVif3i3QKO6h8M0JGUBO+YeiAiM7HYcUCABEt5F+XzIdg8oPxVPOkL/aSAgzB
         uG7EY6sYSY8tNzsHJvaKpPu4X8t0EhMc1wOSZnpoFEOHTgzeR0e4y9cLef9kASpVa+zj
         jZP7VucnrbdkMAq98GsH9QXYGbqAKaBiq//650K8RukxdP7wvy5QNbR9iC1x374pDeRT
         7eXMDFe0rx4t8rxRn87ft/N8I4Ai4nvgJ3ZYQrc1Ydfyna9kr5uhOGd50T7+JNoWSa8h
         N24IqD1Cx+OUnMRxgwgefngArYbQhWn/d0/3K3z5n9gdyRnx4HBnQr04IyVTsO524SF2
         /z3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-11-20 header.b="d2s4hqx/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=E91ihVSo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id t77-20020a818350000000b005ff8ec284fasi807820ywf.1.2024.01.29.07.34.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:34:18 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 40T9hwaE002916;
	Mon, 29 Jan 2024 15:34:17 GMT
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3vvseuc62q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Jan 2024 15:34:17 +0000
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 40TEowIq031537;
	Mon, 29 Jan 2024 15:34:16 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3vvr961gb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Jan 2024 15:34:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dImkyi9RX/z2S6Y6kLFa+MczzfPM7K3en2JBMUt53AYeBBtGGwvh2zJKl5v47d/m2NhreEJGF2GZZwjbl7EqSsKH2GV8mWALhGVoMjQCmQZwWcs406bDDYNQ5K0hzq+Kz8YOsvDPcNyQ418u/mMEm87CEADjAe90JSDqgZ8HARo5Cwl3ynzSd0JSVLf3BcUUGufgqDIDdyh5xJN8bXt8d1j1cbgI3zny+x6HOZp6iUSr79iSbwElLPJG5nh7cZFXps0pZ70qmFNjykbtLkzsPDBaQvyMzVwbMJMUalEBAK3Y2LrxVGQJs0Om3A5fZoISDztoe8STsYOkV8ueQ6sMuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKHniiFvs1zTmftY1pIjlStJ4iNekZmtQvYgXlv/VnI=;
 b=aTDpTtupHXK0bPIrdvwlamNT+kfTpwOz7jbKueMKKMuR2RnuA9ECshWUjn95OT1mDnpbe+SVABQDDuJN+bh6pUTZ8CDTHJw6LRE2P8s/ilx7Img7oWZn+qj0MfrXQXvd3P9pQZpiL0co2Iu0zSe6qq4gFcIg4DDtUpvV9mIxtFEdL9hUxVlYuqDBvIv+oD2H93pcxpPE2pNXI7m3jbecuWQyL0M8epgY2mi3hdXcaEg7/vl/aVzhh+xlS8/vf1I57WyDIC6P38EyYs32vZt6ZzrHi0GiTxNuLXPeuDE1nyyRnpCd4nEbHTNUivQaqitW5XlsVJW/yC4RNY/iRXTYFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from CY8PR10MB7243.namprd10.prod.outlook.com (2603:10b6:930:7c::10)
 by MW4PR10MB5702.namprd10.prod.outlook.com (2603:10b6:303:18c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Mon, 29 Jan
 2024 15:34:13 +0000
Received: from CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::45f0:7588:e47c:a1ac]) by CY8PR10MB7243.namprd10.prod.outlook.com
 ([fe80::45f0:7588:e47c:a1ac%7]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:34:13 +0000
Message-ID: <9db727d3-1f82-4dd5-ad62-a04d17f6dfed@oracle.com>
Date: Mon, 29 Jan 2024 09:34:11 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: iscsi: fix iscsi ida memory leak
To: Guixin Liu <kanie@linux.alibaba.com>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
References: <20240129090410.11105-1-kanie@linux.alibaba.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20240129090410.11105-1-kanie@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR03CA0212.namprd03.prod.outlook.com
 (2603:10b6:5:3ba::7) To CY8PR10MB7243.namprd10.prod.outlook.com
 (2603:10b6:930:7c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR10MB7243:EE_|MW4PR10MB5702:EE_
X-MS-Office365-Filtering-Correlation-Id: 37fd75b6-3ce5-499c-8a39-08dc20dfbee9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pxab6bdLaiWUB9DUmxzf8fUdLX1JciNhB1oaASkgWahrAEMVwk93mfaWhfSADaPHKefY75G1VDJkv1mCUoFSvxUhxNl9WwkOW+PbsKR3GNLNVnVg+yxYafX9MSj9R8w74++ChgnkriWQ+nbc8SkNKfZhxH/nB9wDtvOhVNAB14P7Vn9KpoX4PcnJBeNL9a8sTZc31ThN5m/yVfrEnRw9A6cr28GLjyYeLK9cWubkSLOGx6zUUq0XmaSv3j6aSqcAnFP6WLh37sR815UYBMF+2XJRGS5XoZ3v6Zzvo5j0ARQ8hfYmJAxvbottncmiY+kzH3odMwD4wP9xOAs6/PfsDz52YfMQBEW/hleY2swp7AYbqDd9ObH9dg/MkxXIzM32eHKpkYE97TRfAsvByM2JhUZh6KdOzRrDcEsSTDwkVYxIMMlHGF8pFA1EBUBp3FgOX4r3+tbdkGv6VlUiyInIGuOiAEUlQxDYopd/vOGtgKmmcPUS5qTWUKwglUlkw9rrfO6V6ScojnjuOJnSDPjV192UbWQxaY0jdUxnHF5CD2cBcnI1/RJlIc9+XNeB7gtg8lZ2vdDF6Yx2rEqbmoilNBV5hkisFaQX1GBpcXBdEmC0vA4Vh+CSR73T37+3tnxKa8bVUkzD0Vwvmj1ASNTOAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR10MB7243.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(53546011)(2616005)(26005)(38100700002)(8936002)(5660300002)(8676002)(4326008)(6506007)(2906002)(41300700001)(6486002)(478600001)(6512007)(66946007)(66556008)(6636002)(316002)(66476007)(36756003)(86362001)(31696002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0ViMXRiQzkzQ3VVZFpCbmRHdXVrYjgxc1lsRkNTM3dsYURPUFlhMmtJZGw2?=
 =?utf-8?B?NUxpdUxrQUJ6aTdZbzFFTjVZd3dTclJjME9PSDZSTW5wcmgyVDFwYWREbGJF?=
 =?utf-8?B?T0pnZ2s5bGNQemhOaFJTT1VGQXZ5dTJiVFFvZjlPdVl4cjNHbGJxcDZmQWJF?=
 =?utf-8?B?bVlHbkNjeE1hWmpoWVRHZXlPNWtHN0RjTEgxdEJHUjUxTEhIYmJSSHlNa3d4?=
 =?utf-8?B?cnFubU5JT280YjZaWkdYWTlUeG0xRWM4MVl3SWFBRlhESkRSbzcySTFjN3JX?=
 =?utf-8?B?LytqKzVNZDVYb3YzdnNDOXpFa0xrZllhU3lMQkV4dC9sWDUxaEVRRm5peER3?=
 =?utf-8?B?U29PRU9nekZJZUExbDlnUy9yQmYyYmR4MXNJQkV5SlVXUU44MFFsZE9ISEJz?=
 =?utf-8?B?MTh5U0V1ak1pL2trOU5iZmY1eGJlUmVQRjA1RlZycEFIaUVWQm9uWFFPWE16?=
 =?utf-8?B?Z2ZSS3ZKdGVmNjJxdWNCNTJBNVZ1by8rOEFzWmJGcjRTalBXWEJLODViYjRC?=
 =?utf-8?B?MlZmQU9naXpYV24vVXhtZHV1dDNrbHB2eDk2bFZSTlhoZWMreWh1ZzFJbUhh?=
 =?utf-8?B?Q3ZUZlB1MFBNRVFvRnF4a1VjMktBdUNNcGZwa3FGSWZFY21pZGdJNTkzenBk?=
 =?utf-8?B?YmhFRzJJTUpqeVRHOVVBWStqbHc2RWRFSHdBWWpMdUkrakNFUldhcmMvUnJO?=
 =?utf-8?B?WVB0L3kxT081Z0hMZm5ZQnpQOXBPb1JLZzJaWThoS3kxYXVsR0RmSHJCQ0VW?=
 =?utf-8?B?S3lqNHRBdkJmYmZ5M29mU2RzVkIzM2cyMXFVa21jRjNuWmFSNHZLbnA3Q2ZT?=
 =?utf-8?B?MkEzZEJUa3hvQVE0QlV3UjhtSnV4b2FNemhqSVFSWDQ5NXRYRlJHWXNFcHpw?=
 =?utf-8?B?Ky9iTm5oOHAyVXV2VzJjZ0RJQ09tNGJjR3VWb09sUlNVNzNoSHZDWDgxdWdH?=
 =?utf-8?B?b3hjWE1ibUJYcC90dEVTTnp4L1NCa1NoVDdidVBPUEF5bHY0bWhFRHZ4N0NY?=
 =?utf-8?B?U0IxUHBSajU0dnppYWlzdnpFa3ZrVWZTVUpoMUwrWDJLT0ZKY0NvQ0YwOTVa?=
 =?utf-8?B?NUJKMTFSSW1XZGRVaWdacTYyamxuM25maU9HOGkzdFZJTkxHekgwdGM5djJ1?=
 =?utf-8?B?Q25ody9ab3FIeUV4NjNTT1RSWTArMzhuY0lPcS8xaGY5SVQ5aUJwL09PekY2?=
 =?utf-8?B?SGhCbE55MHkvbUJReVF1UmErTWFxT2RMZ1B4M1ZKak5OYkRMN2NwbmZXZEln?=
 =?utf-8?B?OWp6OUUwcGNWd2Yya0N3dVhValVXQlEwbWVseHJRcjVsdkdWT3RocjB3OWRi?=
 =?utf-8?B?ZUpSV0NTak5mMXlwN0orQ283UWVhMnlDOWZOWVp2UXlPOHVsTlU2STlGV0ZX?=
 =?utf-8?B?WGxiNSswUndmKzlxcmVzNXh4QVBFUWprN01tejJGaEd3OUljUFdBa1BtSXk4?=
 =?utf-8?B?VFU1RVdNdmlGVy9Vc2tUUDViYUNURGZlMlRkVE1DSTg4ZFI5UXVFcVV6TTFM?=
 =?utf-8?B?RjdkVEVaSWpxVzZrYUl0L0Z0RkRRNWE0VFJ0aUw0eVBubEtMRy9ZV3poUnkz?=
 =?utf-8?B?TmczVmlGS0VTZVEzc1MvV2ZWOERLb2RjWC9XTGtSTlFvVGYxcTVQaUNvaUd2?=
 =?utf-8?B?MTN3LzNjaTJQMUZuUldVR2lWVXE0OTd1MWZsY284SE5DSTI1NDVPZzN4ZFVi?=
 =?utf-8?B?RUNMQWtFbG1BTzhZdEZuajVMbmdoM1A0S1plVjY1bjRKL3NxcUxqTTBWOXVo?=
 =?utf-8?B?WHlDcXNVbnBCMzkvUkhGZlFjQnRrbXFDYlJJcGkvUlliYVhrRWlSbTYrb2dt?=
 =?utf-8?B?WjdSR1d6S08zSkMzcTM4bFRZZ2JxN1hXZGRIVmg5c0FGNUZpckJWRXJRLzI0?=
 =?utf-8?B?MEdjRGwvY0QvZWY2SmY5N1k5WXlKRjNucTIyWEZBNFBqRU05a2p3dmVwRWMx?=
 =?utf-8?B?d3VXU2lVUUtIVkNEN2krVTQycWxOd0pOejB5UHdhckszNldXck0yR1gzZm5O?=
 =?utf-8?B?bDFvZGFjRDMzSDFFd1JCaGdyWWpZSzFYUFh0N09TZDgzU1hIUEIyQXViOXM4?=
 =?utf-8?B?dkpoZG9HU2I2ZG9YTUxsRVI0TG13UkJabkorbGI4M0RGNk0vcXBJU05Nekw3?=
 =?utf-8?B?OUsrbTFTLzA3eVh0dithS3RYWWFaZ012RXZZS1d6VHZoOC9KSkZrU3lSTHMw?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: gnfBJTv/BixUGd9c6KMnJXZm2fm1w4d5cfAuJzAdz1Stw++KfWR6T9cM7AYm7Iu/OSdQJ950oeccsDDN/bErKIX781n7P27kU2oT5b109d7+kROrQB2aa9f+LtfTnIedf+s2sz2lIy2hnlPXIBwnA98UywqeJqo0VM5HXdqAAsIzjnvrKUr+3eCWqOP097guRbz9ajShTeea3JkJ9VTH2LDx/ZW9Q3YK1JRAwxf4x/tmqV4LKdBK+0lKdncx9fUQW0jAC96c+dadtme0Q67qY2NERlNQkERkVGda32fRpqKMmnaTsic9sZsHB6AQmdjd78U0fZKYRerUbW9t+ZDUrXZaPu7i2RNzuRi47jOG3DZ1tZyqOwqC707oNHugyVo+l97whtF/ZratGgmI9CA/mzZGlN67DE8Sq5XXUwIIWW/OeonA/45KxWe0C2YqA34HeOcWZN5vBNKVumqOTUZnkhpKpN0vdOD8+uGL7pAMFqQDyYojM9Jdlvi8y0InJP0lGnRJpGqv9LgmuFwyoVdFjJdgLSsnHSglxybe2I8WdJKT393IrcpZ7SYo7+COrbsoTzD6CNjKuL6D3TOkllr0KgRsTvm0d7WhZ99UY76L7WY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37fd75b6-3ce5-499c-8a39-08dc20dfbee9
X-MS-Exchange-CrossTenant-AuthSource: CY8PR10MB7243.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 15:34:13.3830
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPY8jHRm6Y7Eae6aMF1LeS7ZoC2CPpghuGv6ay9OyFcPZjOtAge8pUmIwe9RTBJDAxg+l02/00FlBYWK8Fd1pENxEglnegWXI6FkCoc6oWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB5702
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-29_10,2024-01-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2401290114
X-Proofpoint-ORIG-GUID: 8mTRukkz2GQmndQMygaUsnT-4Y_E_U-T
X-Proofpoint-GUID: 8mTRukkz2GQmndQMygaUsnT-4Y_E_U-T
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-11-20 header.b="d2s4hqx/";
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=E91ihVSo;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 1/29/24 3:04 AM, Guixin Liu wrote:
> The iscsi_sess_ida should be destroy when the iscsi module exit.
> 
> Signed-off-by: Guixin Liu <kanie@linux.alibaba.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 3075b2ddf7a6..3c5b42390c47 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -5046,6 +5046,7 @@ static void __exit iscsi_transport_exit(void)
>  	class_unregister(&iscsi_endpoint_class);
>  	class_unregister(&iscsi_iface_class);
>  	class_unregister(&iscsi_transport_class);
> +	ida_destroy(&iscsi_sess_ida);
>  }
>  
>  module_init(iscsi_transport_init);

When this is called the ida will be empty so I don't think we have to
call this. From the comments:

/**
 * ida_destroy() - Free all IDs.
 * @ida: IDA handle.
 *
 * Calling this function frees all IDs and releases all resources used
 * by an IDA.  When this call returns, the IDA is empty and can be reused
 * or freed.  If the IDA is already empty, there is no need to call this
 * function.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9db727d3-1f82-4dd5-ad62-a04d17f6dfed%40oracle.com.
