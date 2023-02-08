Return-Path: <open-iscsi+bncBD54HHNYIIIKH3MPT4DBUBEOZ2DKQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13568F7EF
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 20:23:16 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id d18-20020a05600c34d200b003df901ab982sf9356249wmq.4
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 11:23:16 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1675884196; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kv3IbP0/QWlDtuPSM2yBJG8gbmR1DsHr0d8+NFOrOeA8TQGWDPr9q+kKiYH5JlZ6jT
         vrdjsGntG7SBL67pt7sE5aG/vEt6ZElWHZ4zv6EX7xGcwtFygWJQnjx4OZqml+IRCVE1
         sfDX9b6TNw6Ftsa/7yUYSjTVF+nKEkXRi54foEecGkKMWCm3Vpd/2iUhcBqgeaSqfRRi
         pMNHYDgYG0rSQtX71Vko9j3fuVdjtlkr+hgSvZ/SQeodmpHRCsEk0CGU4zuq4qZlQYIZ
         q8AOyX6bk2lPbleluuPDMi0SaoOcknX+y7+adHceSLv5rFC73VR7Y8mmb8gyRu9eMJSn
         b5Og==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=W8w9OegGQ1Kvhpqf/IlA53Pu+4WqZx6RTLUTZvS5wds=;
        b=Lglnp7jkG+RrGjUzxvzZ1kY8Us/5XxZwkK1bwrIpgU25fOzBa9XPFSM9UF3dgpFXZ0
         CEVmxs5cUx3o/jw9Izd2Ag0AsigPJV8xuUH09D+HEB+L4Sv+L4QDlfRHMCxGdUmWsWn2
         rdYiAYkFOo4G2uE6Ee3YSnP7Hygl6+ynNNoCEpW7q++PUhLdQiCa2+jeuQ6hwx3EpppI
         JxeM+xaz1DE6glBn5mH7V5WOEcNpbIRd2OFUxlCLYFPhoUNDbSybQ4aSNzZw9//TyFIq
         J962wJHLgFZ/wpN7kdhpSDsXUV1u/bxB1Ti9H1rLZNFFHVGWCIfeqwcz8/P5j1UaUphQ
         +d0Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="08o6S/Xn";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe0c::62b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=W8w9OegGQ1Kvhpqf/IlA53Pu+4WqZx6RTLUTZvS5wds=;
        b=iM7iOwa0KEW7fW6x+bG5oS7XbvpKki+hURGyLRkrRW20HDKQr9DzIbpILI3kbscDEy
         dGFlJQe4EdpyL19pNJKiFCUhr9W+NBIWAxovNqP0BS1319mJfPG4806B35ABNHzwOvZv
         RyVWw8rUBYHHOKdMRzcDnKPteg49QJC2NECWhOXO6iGXwgZaiGGTggHluONFpkIkyI35
         IV1M5AHzaPsXJNxW3xZxwX6mVJSCfgljsuqsdi3OLwGy9ASvwpU9uiicKTxRkuL0drdX
         m0o5gfA3M0qz/XpNv0QGGXSozXUmgtxc2L2wpa9iwqBZNFf+F1MRTqHHUaWbB5RdIjoU
         B0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8w9OegGQ1Kvhpqf/IlA53Pu+4WqZx6RTLUTZvS5wds=;
        b=N1mc/LVMM+/BJ1RopCLjiwLVAe1Vb3WdUYKGBEM27tXRUFYW0mhaE0dWzjFNHX9vIJ
         FYQCvoMBc/ewEK6VJoFRATuv/CXQt8EuRoqZP9uICrTM1lZhuZUiiNmMWg8rEDKTvrps
         pqK2A2yq1V2fc21sfpPvsUIoC+2UmX2JaLZfpKX7LixYrgKPOOVgNllfJZp9cZNinZ5W
         g56PgfTsEJOehAMtrCPJYyu/yDwfzlQzkvGNH1Oqg4bDc0zEuqIeDpQgcMXWr5jwnClM
         nF52E1D6jFrlJETtXZrb6Ja+ZEmh2hbOm/574x6K2ka1PJVzg4jDHnvjRLNrhddiwkgy
         b08Q==
X-Gm-Message-State: AO0yUKWWtMsYsMA+k3haPo+jFcl4z2o3nvzAsiY47J3pPrdsm9kQVbIO
	yI8XBzw/ny1AlqtH3Omse7k=
X-Google-Smtp-Source: AK7set/GXmlrs/IEKUVXyqsTpefq6xik/s+F71LFjigwM3mdd4/DG4hZp3TKiQKMX+tsz+T+IByeug==
X-Received: by 2002:a1c:f409:0:b0:3df:db25:9a8d with SMTP id z9-20020a1cf409000000b003dfdb259a8dmr351198wma.191.1675884196500;
        Wed, 08 Feb 2023 11:23:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6f0a:0:b0:2bf:ccef:53a6 with SMTP id ay10-20020a5d6f0a000000b002bfccef53a6ls865665wrb.0.-pod-prod-gmail;
 Wed, 08 Feb 2023 11:23:14 -0800 (PST)
X-Received: by 2002:adf:d081:0:b0:2c3:e4f5:18a with SMTP id y1-20020adfd081000000b002c3e4f5018amr8153578wrh.33.1675884193980;
        Wed, 08 Feb 2023 11:23:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675884193; cv=pass;
        d=google.com; s=arc-20160816;
        b=0UoQMb9roP+G+lhHs48OJyzJlLygkmQtqubiItIkq5vMBHN+PB/73OXY3WJG4rsHUY
         6y7eAdxJG1A9W5QgnRFU8vTAX0p091PYhRSnWGk++CMoE5tTFsN961vF8TAkt1akaPg1
         SWYvJfH6AKbmqfA5hEUqa0E9O8YRtfneOqVZdKHrg+Tcw1o33om8rqsj95cirShs1Hk5
         u+I6zKwkFnmQu1SxNaPGzNylERB8eaqWzucSSzafiiiS1nvc8QHbHeQzQXx8guh95lTJ
         6RqAs6/RyA8hWu/VlTLcOtB9t3jRGtrE5zqqVXDodivT7I6psyBFoM8WItlj3t+RBTut
         GNfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=x3Wh+GpLZfyuo0dqBa0I7D9wEIDKdyod0XNd7GNA3Q0=;
        b=Shb1620IAgEQN2rNPBz9CiON3EMRrM0ywBghoPugOSOQK19qgJVXVI6kUnZdAwHhqK
         KbUkg8XkBCBnoFoGOhNkH94a5MBnqqCitD99h06S20fIB8O5YXT+Jsu6DzvW/o4mq2TX
         ALi9/hMqOhycBQxX2IDhqY9tTnQ+9ZKMl+gjZjcRAayg+XEnlkFVLgzaYIbePGN3EB2I
         hnbaFul2kPhxBNEvia+PC19iDiOJLvmplOpULolwaRAoaNe8O7eFvZhwCf/uHwthtnbS
         B72pv4hGS54GCU/LAn+YLuORja4JuODEG/0b6YDMt1cR03hh7Q0nQwHFTxzrqpywjqmY
         3KYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=selector1 header.b="08o6S/Xn";
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe0c::62b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on062b.outbound.protection.outlook.com. [2a01:111:f400:fe0c::62b])
        by gmr-mx.google.com with ESMTPS id bg10-20020a05600c3c8a00b003db0d2c3d6esi168771wmb.0.2023.02.08.11.23.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Feb 2023 11:23:13 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 2a01:111:f400:fe0c::62b as permitted sender) client-ip=2a01:111:f400:fe0c::62b;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oGP0Ho1EGPKZmt/5Yl42kzllmQHItuw4Seycq+P7/AQI5voPmg0A/d4Pe0NLyqxBbcTEvx9BjHkdWKYXiSKi0GPHjBU/YBHdMSGbUv+OOlCfCudGKGl9lCX+XEKAyXszZ7sm5L65XM+YAI1JMmyzy+S8pZ7IJh4yNvBHj8CpeJKsFgyzhK6TRoOtUb6WNlKjAfXSFE2pDND5hvrqvUQaDPAru0JRxgVboKN9rnI7djmpO6sHmlJP7ZUam8yi+PtcZpo8fKkk/XlVc8uNl2DENCcklLcmq2JstuAf4HqTmjEjwaSiw/04akXW0N46og4MjfGX1lc+3IdvzZ3AYpEwvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x3Wh+GpLZfyuo0dqBa0I7D9wEIDKdyod0XNd7GNA3Q0=;
 b=AOIMosozXCPH0RXZb1hNZHz8fLBhRjYkKrYx27YtPZnFOn0Cah7c6ZDpjCe8J7ZCiW5DZv1VhbH2dPyedQr3uMfm5AGMiyVWQpEHUgzvR7ZrCPmdnTS52Lsk9fklxBj6AUXd0Jl3bW8cGJWjNs8l/mBTGPAk0vy1IF/5bH4n2XJcFTpF7OqmLEWBfqYt0B3rrpJ4aE+zG3+41jmD6RZnuOr4HgnCCtNmR7029V+zhVyBnySNVqTSADZQ7sa3zUrrxRU5r9snwzmxAuWwhcu7Rs4h48udV1pThZ8UxTLa6bAzrKykaSqcth5qY6IsgcMzDAY5BIW1hjkw1m5w6qqlmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by PA4PR04MB7693.eurprd04.prod.outlook.com (2603:10a6:102:e0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Wed, 8 Feb
 2023 19:23:12 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::9a12:6b0f:b2d:661f]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::9a12:6b0f:b2d:661f%7]) with mapi id 15.20.6086.017; Wed, 8 Feb 2023
 19:23:12 +0000
Message-ID: <f911472c-c4a1-27ee-8671-037f330096f0@suse.com>
Date: Wed, 8 Feb 2023 11:23:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [RFC 0/9] Make iscsid-kernel communications namespace-aware
 (resent)
Content-Language: en-US
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, netdev@vger.kernel.org
References: <cover.1675876731.git.lduncan@suse.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: FR2P281CA0097.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::12) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM5PR04MB3089:EE_|PA4PR04MB7693:EE_
X-MS-Office365-Filtering-Correlation-Id: e76a8a72-2522-4ecf-afcc-08db0a09eb17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bRuiOdlnjDSk1ZjU8VlWKQcMJS2WRHICQxAZYXYQVSGvghgKbHPWuE0zAHCQP6ICUGSasfoW89iKIt29V5EADdGgW8tkt2/rVah4dUE9Dj8CZqgN924OsD0i665PDi8n+hGO5Mk4+EgFDyWiQmpKDte4kcTHtgaKF83pwGea4vwu3KFp1pfgIE3kTkEsEsM3aneuAZ1Zy3a47n8QRUnqMriuX57dY7ygt/fjGw7vGxR0heXGq/vyFEHY9afIKqEELO8+LaBlUcJ+OrLmtsQN4Flt5tAVzcXPYn1h1zP1zbI90SytvReYeQJ5DULoR4uM+JCND0gpInTgvEE6rj34MXvoOFSsca06IxHV0CxcwWEv2MdPQ2kTV7okCLwqGBxiSwSWc/eoDvhMhMVgowRqVvJxKgQRDC8BHcKTcTJMzvG3uF0S7CZQTiVIkEwFjwj3Cp7fOmOIl8z8MYNw4UZeW82T1w7ZmMhUPnYgy8802T/+TCOKEkQCMutLXNEDcutcMLimZ/DN7EI3Dvs3iyr27DqMBRZw5NXm0JZVM/gg7JvMUXOep1iwr2CXk8hwrO4odZxx3BFU8VBIc7U7JeUu3Jlh7mkpsbJeu9+i7Cd7aNegJZgy/WWoSf+ROtzFCiaOujboO/ShVqs579UZ2UMo5mTtFcuBFNBTbABXhKbz5toaysDYLrIBlzVEPwST2sTQdM+ehmvHf8eACD5GzOWsgTKooCu/CQJpXCN5pmcumqc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(136003)(39860400002)(366004)(376002)(451199018)(6506007)(86362001)(5660300002)(53546011)(66556008)(26005)(6512007)(31686004)(186003)(8936002)(6666004)(2906002)(66946007)(66476007)(8676002)(66899018)(38100700002)(41300700001)(316002)(2616005)(31696002)(478600001)(6486002)(36756003)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajJQNjExOEVMdW9RYlhlT1NWL2YwOHhBQnZ2WDEzL3lGcmxjdEJueEFVeFlv?=
 =?utf-8?B?WkdHVmlpQ0ZROFBhdnF6M0poY01qZkdaM2J5dyttV2tlQzFWZkVSaVJOMXFK?=
 =?utf-8?B?NThoWEtOaGtaeThTanFHOThHRXlBQmRua1UxZmdkbkd6a2h1SUM4TnByWWFQ?=
 =?utf-8?B?OG95UVBkSGRxbC9oRFUwcmh4T01qVkNqL0NQNEtYRXV4aGt6Szl1VHF1R0RM?=
 =?utf-8?B?cEFrd0VIYUNWbDVXTGM5SFk3QjFRc2RFMDdESzZERDhrRVFiZmRvREpXSU0w?=
 =?utf-8?B?UzlPYmJSajNkZGxsR0ZVdm9zdW91QzNIT3E1SzlmdHFqTEVqYW8ya0ZHZldp?=
 =?utf-8?B?ZFpnS0tTZTZ5MHVDRnFaSFdtbitTM25DcjU0cGtnS1F0cEVxSmpIZUFwL29i?=
 =?utf-8?B?SHpnWEQvaFVwT0dpM0tjWmVxN3dGWGsyK25OWVRSaDJ0cVdSYW9ubjlZMFJM?=
 =?utf-8?B?VTNISjNtOVAweFA4MWlCbjA5cFBqcmIvVDhZak0xTERHRTBiZmlqMHYrRmVM?=
 =?utf-8?B?ejV6TVF6Q284OUJLc2dnN2JVM0V3cmIrRmVoWksvNXdzOFBKd3MybVhQNHRw?=
 =?utf-8?B?SWlUdzRmcm1Pd0RPYXdXVmFJNTNNMnhtNjRGSGE1Vy9XbWxyczNFUXJzWGgv?=
 =?utf-8?B?cGszZFcxNU9YSS9oUnB0cS9KcXRvUkFaS0tDNnkyMFRJQXp6UXJjSFQ0c29P?=
 =?utf-8?B?clRvaXNkTnhDeEVicHdIVCs2YU5paStEVnNNNWlLdWxRaS9jc3RyVlJLVUYr?=
 =?utf-8?B?U2hFYm9SSnRROGNjZ250WXRaS3NRZk85aGdQNDRWdGRLeFQvUjZ0M2RKaXpV?=
 =?utf-8?B?MjlaWDQ1UGVPZ0oyQzQrVURiZmF5SnR2cDNad0NPelB0RjJlcytSWWZDc1Bj?=
 =?utf-8?B?ZWhISnAxc1hGZXhXQTI2WGcwSHpLL0FVdE5rZUkyYTQwNm1XUUEza3UvV21u?=
 =?utf-8?B?WE1tY0xvditwMEozSFRqV0FIbzA2Q0dmTnhJckpiOGhqbjliN1ZnT09ubG5J?=
 =?utf-8?B?ZStheDFkRkpKL1RFeXdqYzVrcUNKeEgrZ3FnSGxmZHdEUmtpZU1WWVhocGhk?=
 =?utf-8?B?L0ttUHdjOWNaUGhzY25UcEV4ZzZTYmVBNzk2Z0c1MzBGRUZZVnV6ZWJWUGZ4?=
 =?utf-8?B?bTNZaTRIenNuRTlRTllLeVhOZlEvT1ExV1NYMWtseENDdjNqc2YrbVVIaHFo?=
 =?utf-8?B?c0FZV0xNK2d3dlY1czBGWTJ6NllWMmVSa1VwRVFOZkxCOEovRlVEanNxMENF?=
 =?utf-8?B?UGdtelc4QUNES1hWUzZhclBDZTZQUkRhRzU5YVErRGZ0d0NPMDF6bWt2dExZ?=
 =?utf-8?B?OU9vMkRnTFdHZ25vc3BjWG1IU3FPaFVtUk5HUm9sbkw3SjJra2lpZy85eVNz?=
 =?utf-8?B?c1d2cCtvdndycXc3elBHUWtkUVc2a3M0ZTNBZHQ4a1lPaitRck9VVWxUMzcw?=
 =?utf-8?B?M2hHNTVmb0ZKcURNM2FMREk4TXRQUjkrRlk2OUlrME5YbXRzNTNqbkFRd2dZ?=
 =?utf-8?B?QzZqUVoxdm95Z1NKSGl1cW5yRWZUdEJMVmJINmZVMjhsTExpYVNpTEVBRUxH?=
 =?utf-8?B?a0FnRElEQTNFQzNLTDYrdk9pbFRsOVh4dytxeUI1eVFQSUlXMmtOYlFKSHdW?=
 =?utf-8?B?NUk0MmphcFBoaTR1WFBDWEFOSUlJenIwS25SQ25pSFpJYkw3U2E3RFljem5O?=
 =?utf-8?B?WHk3cllNV0swT3NFaEdKSHVaQ3kvTlRYaDMrck1MSTNPcjQrWVF4MFRjR2g2?=
 =?utf-8?B?ckd5UWtkdVRPWjdnNWdPc2VROUZHVjY4K21haHB3ZkpUVGJSWEh0NzBmL2Js?=
 =?utf-8?B?UHpOMlNiakRFTFQ0K2FDbUtSOVp4REt4M05JbmZ4Ly9YNFJaYUxDNkZid3Qr?=
 =?utf-8?B?R1UyTzAySnpwOUVZdStWZ3NNRHBxMzdsWElPald3Zk9GYVptYW8xY0VjaUR6?=
 =?utf-8?B?S3VBd2hGd1p0K09BcUgrRzZNVVB5Q1YxUXFuT3BUYW9ZTENlVDZzT2NnUCt0?=
 =?utf-8?B?NlBBYkgwbSt5ZllNcnR4U3NCeTVzcjN3dXVzTjU4OC9wMlRvZTh3Z1Fmdnk1?=
 =?utf-8?B?OGlBTnNaT01RaWJWUXpGSlpONTJodm8vVXVIOGZjT01ia2ZSNDVkZGdkUTlq?=
 =?utf-8?Q?OUKJlrO+hsLq2pKIZzuJKpE4p?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e76a8a72-2522-4ecf-afcc-08db0a09eb17
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 19:23:11.9801
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RyNAqGLjSCtFvrZecrCSqV0K8VRiBp1Zj2X7biLZqM6PTJWYHJ47XOpRGo88UNRgUrf5+Xzx6VywoT2UklnheQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7693
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=selector1 header.b="08o6S/Xn";       arc=pass
 (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 2a01:111:f400:fe0c::62b as permitted sender) smtp.mailfrom=LDuncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

[Resent to include all mailing lists]

I wanted to mention some issues I've discovered as part of testing this:

- Currently, only some sysfs entries are going to be different
   per namespace
- This means that the Configuration and Initiator Name are going to
   be common to all running daemons (this is /etc/iscsi)
- This also means that the Node database (and discovery DB,
   and interface DB) are common to all running daemons

I'm really not sure all running daemons should have the same initiator 
name. If we think of them as separate initiators, then this seems wrong.

Sharing the Node database may not be a good idea, either. This assumes 
that nodes discovered (and saved) from one namespace can actually be 
reached from other namespaces, but this may not be true. Having the Node 
DB and initiatorname shared means the different iscsid instances must 
cooperate with each other, else their requests can collide. Also, I can 
imagine situations where different daemons may want to set different 
configuration values. Currently they cannot.

On 2/8/23 09:40, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> This is a request for comment on a set of patches that
> modify the kernel iSCSI initiator communications so that
> they are namespace-aware. The goal is to allow multiple
> iSCSI daemon (iscsid) to run at once as long as they
> are in separate namespaces, and so that iscsid can
> run in containers.
> 
> Comments and suggestions are more than welcome. I do not
> expect that this code is production-ready yet, and
> networking isn't my strongest suit (yet).
> 
> These patches were originally posted in 2015 by Chris
> Leech. There were some issues at the time about how
> to handle namespaces going away. I hope to address
> any issues raised with this patchset and then
> to merge these changes upstream to address working
> in working in containers.
> 
> My contribution thus far has been to update these patches
> to work with the current upstream kernel.
> 
> Chris Leech/Lee Duncan (9):
>    iscsi: create per-net iscsi netlink kernel sockets
>    iscsi: associate endpoints with a host
>    iscsi: sysfs filtering by network namespace
>    iscsi: make all iSCSI netlink multicast namespace aware
>    iscsi: set netns for iscsi_tcp hosts
>    iscsi: check net namespace for all iscsi lookup
>    iscsi: convert flashnode devices from bus to class
>    iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
>    iscsi: filter flashnode sysfs by net namespace
> 
>   drivers/infiniband/ulp/iser/iscsi_iser.c |   7 +-
>   drivers/scsi/be2iscsi/be_iscsi.c         |   6 +-
>   drivers/scsi/bnx2i/bnx2i_iscsi.c         |   6 +-
>   drivers/scsi/cxgbi/libcxgbi.c            |   6 +-
>   drivers/scsi/iscsi_tcp.c                 |   7 +
>   drivers/scsi/qedi/qedi_iscsi.c           |   6 +-
>   drivers/scsi/qla4xxx/ql4_os.c            |  64 +--
>   drivers/scsi/scsi_transport_iscsi.c      | 625 ++++++++++++++++-------
>   include/scsi/scsi_transport_iscsi.h      |  63 ++-
>   9 files changed, 537 insertions(+), 253 deletions(-)
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f911472c-c4a1-27ee-8671-037f330096f0%40suse.com.
