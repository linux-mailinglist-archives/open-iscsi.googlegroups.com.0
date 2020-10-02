Return-Path: <open-iscsi+bncBD54HHNYIIILNI657MCRUBCTUIRZG@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C74E3281791
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 18:13:42 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id t10sf578103wmi.9
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 09:13:42 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1601655222; cv=pass;
        d=google.com; s=arc-20160816;
        b=ipQHsyJJRV3q3n3k6xx9bK/tepFmjwKLQu8krfFjWpQ94gnsNxnbteRZzwfVyxFc/v
         EVas4oBFg8j0UmSEujmzlgnXciN2pI+xZ7oRWbraGL3maoOahg2/GxfPHTijbrXk8nLD
         OeYZRA0Sz1dEoDBEaMl1q6VeQvJhtvbEYaoKXTBnje8nzYrt10cSpiB1psmb/SQmPBj4
         /B5YDUgNegGxMu2Ab/IHoom++Kl1BSgN4p78StJQTXSYH0/Hue0dv0lSo/WrquDcMY3w
         FrSwcWyAocKjG9O1oz+qrRF5ijJEiKNkSr7/F6qlVkulh7qUBupHeYz6VfwmIm/p1Tuy
         5uew==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:autocrypt
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=PnTAdGH+ucgMuHyyAyCPV9QThgKC1ZM/Us3IYBtBWRQ=;
        b=qis4zU2v0zgGRauC/S4StLG20T//FKQE52XqHnW88c4rAFaCbwodxOQcyA6I1GoT4m
         Pe1bSb26K9bqBnJyoBsCu1P8C8ocDwER1LD3cAjJRKw/8JC37AgoCBNrazks1GX5pjRj
         CjVtYUtQjU3eY201vR9Qb9AEgwsP2Rj6GTHbTigIY7wTQbUyR370nxhPRtR47mfbTpMB
         K0ujTWvZDKno8TNq/Ohx+N6ahRuZK7YbRkH2nc+2oB5nDv9/iV5lOuuQFgF2/m4yYPTs
         nyh7BjOPOxdeSbAaX6wtu9nAGSuA6I66Wx9nDbpvHXFd4uszTJXg2G60bGQAxOycOx35
         3vRA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=LJJJ4tiH;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PnTAdGH+ucgMuHyyAyCPV9QThgKC1ZM/Us3IYBtBWRQ=;
        b=gZh+K5BSGPjHEjcexihb/A4126hdPg6ImNAs05kFLeHjlUJgQYDvLiGs0omPFeRt5z
         XJTSFAjkFq/hkVQ+u7V4JkVebGSKpwZ9BuaZQ7PDLw4qQSC0mWCX7aaB1vDmLXIkd277
         lEeEwG7b1XE03QYHB1ysFGC6TEUicAAkgQ5Js8KI0Xh3YUI53V3Cg4cspzbm9ZK9hjAo
         Vm30kAFPsM3/GSRx+j6afXF90FWlIV4WHdFSv0eOv1b70ZjBBElFVY+O2GuM/KS7sg9A
         TC4WrdEo7tiRua2OK5995yeRuj3DafKUhi4+tcGPELN9JMMec4vPn+h95qOO7HwvnIyf
         rJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PnTAdGH+ucgMuHyyAyCPV9QThgKC1ZM/Us3IYBtBWRQ=;
        b=KlUkyqTQFXQ9qWHomyeSzNGNE21wrajxGo6qVWfg4Ro29i3Jwd8qZec58SeoLalLqf
         vSdNYRAU+Z3y7/tQA7GaPQlyV0mC7xYRL4qG8m6TOWRMLhOMBGXXf7JMKRdiUK4rh06/
         qcr7+LfLBhO5ugcKS2072GgdjaKY6DW3FTt2VGQq/FbSXgzuBcrys/nMFR4fH8/b5huZ
         UrXCmxVgINgf4Z0jt2O4vk6/6EkQ6trjmnUY7IkfJr0dDjDILtKZ9Lpjk50PytfeKXtS
         MsETRhS6N9OZgeWg97yQtD4qmOBCTY0+RqUdRSCLJeussSCh7HkKylLun89k9o174OwC
         uiIA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533am22chEF5sXWxxIcmhEJULWqAjVmydLGmMVki5V28r0hhwOc7
	loQ4vrVP9yKAYStH5og3Zbc=
X-Google-Smtp-Source: ABdhPJw3XWRd9SHH2uWZjZtQnaYPYqyWZ9gTdpYyGUMMkot707jYQfzqQywfNd8EU4VFcEZjRWX7Zg==
X-Received: by 2002:adf:ec47:: with SMTP id w7mr4154411wrn.175.1601655222476;
        Fri, 02 Oct 2020 09:13:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls1649878wrm.1.gmail; Fri, 02 Oct
 2020 09:13:41 -0700 (PDT)
X-Received: by 2002:adf:ef45:: with SMTP id c5mr3893818wrp.384.1601655221521;
        Fri, 02 Oct 2020 09:13:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601655221; cv=pass;
        d=google.com; s=arc-20160816;
        b=LtP4fQZ/qBgTYQqoBwZD30WerUQWA848q+XQsxsJRH3umJ1jYSKGY/8GdlJf9mgfa7
         G34Lu8j56w+zahTjhwOG83j1Kwa7YBEjhDS+M2Q3GcTiuLwIY31EauP5CWsch/71L5KQ
         +umxk52rCySmKSOJ83QIlJCoOhMjGRXPOhNcD9KJBvcWqRFam7qNZ4XObdFvbqJAds4i
         YtWBI+fr7CsefHFo9PZc1v/QmlSad5pWNj1oMcy0ai7Y8i3NyePUG7Mwvpu1Qg+1MexT
         CEMugfvq3NvZ/wLyg+vUmVHNY+e8QIWyVaytb8kUaaByNRIzuNOAXtElYmEuO1jbjzPs
         Tzbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=g0xWhJ+KQVTfW0JFu1ct2tI65Sv02R8QcjiBr3Nnitg=;
        b=SSrASH0dxW9B/AB7KRavmVZl5+/kRCZ5+LceIusNXQy3VJ+I6WDOMmsHuZ2/6/LDAb
         huVHQA74/rPdqc4Taimsh3zG2cBQvFBFvTTsoZ6BH0hJ2Wb9DRyRrjFworEXrEmGURF3
         dwGcUCvxE8sejN9MhY1kySdGwlwbJqf43LQcVANbkrTqus3v3o1H1oEX6l2/mA9NXTXV
         j3y5hP62cXPewtYMgQzIEdtbclCvzOIPviOsKnztvOMkTph8nuFiAfXYaqJtbD90uiyV
         x6pBl9dXtnOSJQk+6sivSMxDCcL8Q9RyJ1S/XI8S0Xwtv4lvvpenUonQTfaeOepUpEtl
         iOyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=LJJJ4tiH;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [62.140.7.102])
        by gmr-mx.google.com with ESMTPS id h2si86776wml.4.2020.10.02.09.13.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 09:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 62.140.7.102 as permitted sender) client-ip=62.140.7.102;
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2052.outbound.protection.outlook.com [104.47.1.52]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-36-DFkdOlfLPkyx3Qq6gArq5g-1; Fri, 02 Oct 2020 18:13:39 +0200
X-MC-Unique: DFkdOlfLPkyx3Qq6gArq5g-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDwZzXPWFcpmGqeOU7PL5UZnrgt8dZvtV5sNFOgjm5KtgTCG7bXgoUAyjsoD/UOYdhQ77Fs/MTTmyS7UqrtWtjM0bOzZLrpWFAeVbExtxEPhXSiAhIZgulGOje2vEPs3rJ4GqqjhblFCRO9/52QFLjqNchPGa/rItKfd1WfcheveQY1x1RpzQCpLhclpqtUt20jsF1OQMVffZdOI3pc/dofAYFtvhPMNT+LLZFVLlL1pob9ElHsTvuKEhqzjRX8Bu3NIZsYJwHb8MQ7ht5QqAS27qHxTuj2jK6U6P0jAwXkSyw6mPpUswiaczZvbkLcpjtm+7lsotG6rn2vwcGF4oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0xWhJ+KQVTfW0JFu1ct2tI65Sv02R8QcjiBr3Nnitg=;
 b=I/dtq1PwMYZPKewH5d7OIbcNyHRahkiSUnzZ9DpdSTcN62yC4pI3jHxgHv08CmusVmNzawaHIsRCnf5S8BvdXTTcJzTd0U80fejhXoUEN5ebX0zESzTPLuyu0nVpnEohHEproN2Uiv7/INduXX19La8GsKs4y0QNkH0hN8z/EkhKFKVPTUhBhm3U30HJ+txdjXgwxbZWxSF7WKbp2RVGlKuCjlhmaux/R0viGqDhIu8XJdGhwrM94yBaGhdQZ1g9IG/YO2zy/GLtnHAyolR4jLLuVhRaJMBcoH3mRWF2HKQIrWDVUxN9oTTFLNTSMmJ2N99yuZZ8hhRCJwiyPZmsCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.23; Fri, 2 Oct
 2020 16:13:38 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::993e:654f:399e:8230]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::993e:654f:399e:8230%6]) with mapi id 15.20.3412.029; Fri, 2 Oct 2020
 16:13:37 +0000
Subject: Re: [PATCH v2 1/1] scsi: libiscsi: fix NOP race condition
To: linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com,
 martin.petersen@oracle.com, mchristi@redhat.com, hare@suse.com
References: <cover.1601058301.git.lduncan@suse.com>
 <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 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
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <a13eb063-f374-9a9a-0dac-a8fcb702c9b8@suse.com>
Date: Fri, 2 Oct 2020 09:13:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
In-Reply-To: <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: AM0PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:208:1::37) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM0PR04CA0060.eurprd04.prod.outlook.com (2603:10a6:208:1::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.37 via Frontend Transport; Fri, 2 Oct 2020 16:13:36 +0000
X-Originating-IP: [73.25.22.216]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15e6df32-cc12-4064-5fab-08d866ee1ea5
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:
X-LD-Processed: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba,ExtFwd
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM5PR04MB3089E7F9EA546C1C794CD780DA310@AM5PR04MB3089.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SO6rRMsH8DgZIfLyfs12d0XtpoIhMdaQbT6j1VOfryfW8/Pk7VXPE1k6DP+aEQVak/VCNRAedqxFmtvBhY4qYlHG4K5rNf0TNfR1Tdjx0qChgRzihCYsyQuZSCbPYvN/EvLgCk3dkYo4D5ELYIbcGVeE6LGxUUMZEAgNp0K/4elxGlk6DyW76iCYyVhkjCpoX5F0tgR4jUohkXyGEXXARjvkhgESCoJlho4OuCWSOjds/ECj9Znfw+sMGdzgvrxtLDgzXOv5MdVsP1GrenTc2T4I7whi/cefUuhdZjDqdxP8LlXvPfDkr57sFKBISe99NpSTLBpeEAuzw9H5egR8ku7cOip7/t0Xt/eyEEJQnRro+VizJL9CwYpC/Kunsi3/C7JPcskcsd/kOq1wnV+eQMQP/5Ju6vii0SBJDHbA8GSk2l2iIrqUJdF00Wu/enuG
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(136003)(39860400002)(396003)(346002)(376002)(8936002)(4326008)(2616005)(16526019)(83380400001)(6486002)(26005)(86362001)(956004)(186003)(53546011)(6916009)(52116002)(31696002)(66556008)(5660300002)(316002)(66946007)(478600001)(6666004)(8676002)(107886003)(36756003)(2906002)(16576012)(66476007)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: ZBg8ENImvmZKKj1snVs9/PK+J7IkwM1ycVePXt4keh/BbYcIpOxkfpyoqj1cS5EtNjNKLDPO8LvVcJe18jzTF1HvORnIPsc8AhFRLV7vxeZ45d+XPY/c0c+xIfcyhyilh8T8r4+LIevpDZaIaHNK8rHZrSpvP0sNYOY4rQ2cb3SJFRRvlh/Y6tQbDFXqNQ9GY1Yn5YThahPzQdLkwGWY6uRi2k0kbltIBpiRpjr6S6vfHgKhBbiYNoCxugpELE3fU/XYNNHtsv7R8n3oFdide1l2sqF/2LnCNcmDyC4Ba/Er97UvnZRe4eXa6ss1oXj3/JJV1Wd6erQ9Dvb+m0n5dvGwZmcP+FkyP9B7YFsOco0anSd7D3tevTGZenEILT8Mcnj0M4V5ACnwirWN7BH/PRT1AZ+dVbG9xv0rExgf2BYDWBHfIaIrR8ey95Nv0il0W5IMaqyIhBQHOoOyJS9KmV8Z9Qt6V/OrMaDPoyVcPr4zMHFIqZcOTZIubFAhdrPCPbrM1HSN1TOc4g948/vbjouKXS1mKhoEANAUUqEXktUcya6aGvVNRXjVEHeSxfld8Y5Ei10hn3kaeUn4dw8ihbDg3kgZ92bAV3rC8DAK58ie4HN8qxQfdHtvuKXTvGLvxF7PyHtkJSDZ3BsSvDbpkQ==
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15e6df32-cc12-4064-5fab-08d866ee1ea5
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2020 16:13:37.8427
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KaslaSgHXEP3sz+RDib+kj60TpkNRcKBh5xP0vVdWjPnHzNFGRONvZgegGJAEFaZTVU6xYAKNpkHCy+VzcqA+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3089
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=LJJJ4tiH;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 62.140.7.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
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

On 9/25/20 11:41 AM, lduncan@suse.com wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> iSCSI NOPs are sometimes "lost", mistakenly sent to the
> user-land iscsid daemon instead of handled in the kernel,
> as they should be, resulting in a message from the daemon like:
> 
>> iscsid: Got nop in, but kernel supports nop handling.
> 
> This can occur because of the forward- and back-locks
> in the kernel iSCSI code, and the fact that an iSCSI NOP
> response can be processed before processing of the NOP send
> is complete. This can result in "conn->ping_task" being NULL
> in iscsi_nop_out_rsp(), when the pointer is actually in
> the process of being set.
> 
> To work around this, we add a new state to the "ping_task"
> pointer. In addition to NULL (not assigned) and a pointer
> (assigned), we add the state "being set", which is signaled
> with an INVALID pointer (using "-1").
> 
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>  drivers/scsi/libiscsi.c | 13 ++++++++++---
>  include/scsi/libiscsi.h |  3 +++
>  2 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c3171fa9f..cade108c33b6 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
>  						   task->conn->session->age);
>  	}
>  
> +	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
> +		WRITE_ONCE(conn->ping_task, task);
> +
>  	if (!ihost->workq) {
>  		if (iscsi_prep_mgmt_task(conn, task))
>  			goto free_task;
> @@ -941,8 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>          struct iscsi_nopout hdr;
>  	struct iscsi_task *task;
>  
> -	if (!rhdr && conn->ping_task)
> -		return -EINVAL;
> +	if (!rhdr) {
> +		if (READ_ONCE(conn->ping_task))
> +			return -EINVAL;
> +		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
> +	}
>  
>  	memset(&hdr, 0, sizeof(struct iscsi_nopout));
>  	hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
> @@ -957,11 +963,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>  
>  	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
>  	if (!task) {
> +		if (!rhdr)
> +			WRITE_ONCE(conn->ping_task, NULL);
>  		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
>  		return -EIO;
>  	} else if (!rhdr) {
>  		/* only track our nops */
> -		conn->ping_task = task;
>  		conn->last_ping = jiffies;
>  	}
>  
> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> index c25fb86ffae9..b3bbd10eb3f0 100644
> --- a/include/scsi/libiscsi.h
> +++ b/include/scsi/libiscsi.h
> @@ -132,6 +132,9 @@ struct iscsi_task {
>  	void			*dd_data;	/* driver/transport data */
>  };
>  
> +/* invalid scsi_task pointer */
> +#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
> +
>  static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
>  {
>  	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
> 

Ping?

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a13eb063-f374-9a9a-0dac-a8fcb702c9b8%40suse.com.
